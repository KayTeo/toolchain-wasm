#!/bin/bash

if ! command -v em++ &> /dev/null; then
    echo "Error: em++ (Emscripten compiler) not found in PATH"
    echo "Please install Emscripten and ensure it's properly configured"
    exit 1
fi

if [ $# -eq 0 ]; then
    echo "Usage: $0 <build_dir> <other_emcc_flags>"
    echo "Example: $0 build -O0"
    exit 1
fi

BUILD_DIR="$1"

for SOURCE_FILE in *.cpp; do

	# Get the filename without extension
	FILENAME=$(basename -- "$SOURCE_FILE")
	BASENAME="${FILENAME%.*}"

	OTHER_FLAGS="${@:4}"

	# Default compilation flags
	EMCC_FLAGS=(
	    -pthread 
	    -s WASM=1                    # Enable WebAssembly output
	    -s USE_PTHREADS=1 \
	    -s PTHREAD_POOL_SIZE=4 \
	    -s SHARED_MEMORY=1 \
	    -s MALLOC=mimalloc \
	    -O3 \
	    ${OTHER_FLAGS[@]}
	)

	# Compile the code
	echo "Compiling $SOURCE_FILE..."
	emcc "${SOURCE_FILE}" \
	    "${EMCC_FLAGS[@]}" \
	    -o "./build/${BUILD_DIR}/${BASENAME}.html" 

	# Check if compilation was successful
	if [ $? -eq 0 ]; then
	    echo "Compilation successful!"
	    echo "Output files:"
	    echo "- ${BASENAME}.js"
	    echo "- ${BASENAME}.wasm"
	    echo "- ${BASENAME}.html"
	fi

done
