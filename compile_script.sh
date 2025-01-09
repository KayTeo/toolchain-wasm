#!/bin/bash

# Function to replace hex in the WASM binary file
replace_hex_in_wasm() {
    input_file="$1"
    output_file="$2"
    target_hex="$3"
    replacement_hex="$4"


    # Convert the binary WASM file to a hex dump
    xxd -p "$input_file" | tr -d '\n' > input.hex

    # Replace the target hex pattern with the replacement hex pattern
    sed -i "s/$target_hex/$replacement_hex/g" input.hex | wc -l

    # Convert the hex dump back to a binary file
    xxd -r -p input.hex > "$output_file"

    # Clean up
    rm input.hex

    echo "Hex values replaced successfully. Output written to: $output_file"
}

if ! command -v em++ &> /dev/null; then
    echo "Error: em++ (Emscripten compiler) not found in PATH"
    echo "Please install Emscripten and ensure it's properly configured"
    exit 1
fi

if [ $# -eq 0 ]; then
    echo "Usage: $0 <source_file> <build_dir> <target_hex> <replacement_hex> <other_emcc_flags>"
    echo "Example: $0 main.cpp build fe17 fe04 -O0"
    exit 1
fi

SOURCE_FILE="$1"

if [ $# -eq 1 ]; then
	BUILD_DIR="."
fi

BUILD_DIR="$2"

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' not found"
    exit 1
fi

# Get the filename without extension
FILENAME=$(basename -- "$SOURCE_FILE")
BASENAME="${FILENAME%.*}"

OTHER_FLAGS="${@:5}"

# Default compilation flags
EMCC_FLAGS=(
    -s WASM=1                    # Enable WebAssembly output
    -s NO_EXIT_RUNTIME=0         # Allow the runtime to be exited
    -s "EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']"  # Export common runtime methods
    -s ALLOW_MEMORY_GROWTH=1     # Allow dynamic memory growth
    -s USE_PTHREADS=1 \
    -s PTHREAD_POOL_SIZE=4 \
    -s SHARED_MEMORY=1 \
    ${OTHER_FLAGS[@]}
)

# Compile the code
echo "Compiling $SOURCE_FILE..."
emcc "${SOURCE_FILE}" \
    "${EMCC_FLAGS[@]}" \
    -o "${BUILD_DIR}/original/${BASENAME}.html" 

emcc "${SOURCE_FILE}" \
    "${EMCC_FLAGS[@]}" \
    -o "${BUILD_DIR}/modified/${BASENAME}.html" 

cp ${BUILD_DIR}/modified/${BASENAME}.wasm /tmp/wasm_replacement

replace_hex_in_wasm "/tmp/wasm_replacement" "${BUILD_DIR}/modified/${BASENAME}.wasm" "$3" "$4"

rm /tmp/wasm_replacement

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful!"
    echo "Output files:"
    echo "- ${BASENAME}.js"
    echo "- ${BASENAME}.wasm"
    echo "- ${BASENAME}.html"
fi
