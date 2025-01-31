#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <file_name>"
    echo "Example: $0 v6_Atomic_Store "
    exit 1
fi
wat2wasm --enable-threads wasm_functions.wat
cp wasm_functions.wasm old_wasm_functions.wasm

../../../../v8/out/x64.debug/d8 d8_js_wrapper.js --trace-liftoff --trace-wasm --trace --print-wasm-code --liftoff --no-wasm-tier-up --trace-wasm-decoder -- old_wasm_functions.wasm . > "results/${1}_SeqCst"
../replace_wasm_binary.sh old_wasm_functions.wasm wasm_functions.wasm fe17 fe04  && ../../../../v8/out/x64.debug/d8 d8_js_wrapper.js --print-wasm-code --liftoff --no-wasm-tier-up -- wasm_functions.wasm . > "results/${1}_AtomicRelease"

