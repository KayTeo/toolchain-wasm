#!/bin/bash

if ! command -v em++ &> /dev/null; then
    echo "Error: em++ (Emscripten compiler) not found in PATH"
    echo "Please install Emscripten and ensure it's properly configured"
    exit 1
fi

if [ $# -eq 0 ]; then
    echo "Usage: $0 <source_file> <build_dir> <other_emcc_flags>"
    echo "Example: $0 main.cpp build -O0"
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
    -pthread 
    -s WASM=1                    # Enable WebAssembly output
    -s USE_PTHREADS=1 \
    -s PTHREAD_POOL_SIZE=4 \
    -s SHARED_MEMORY=1 \
    -s MALLOC=mimalloc \
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
