#!/bin/bash

#Source folder containing WASM module and js wrappers
WASM_ASSETS="$1"

#Source folder containing original d8
d8_dir="$2"

#Source folder containing modified d8
modified_d8_dir="$3"

#Output file
compiled_code_file="results/compiled_code.txt"
benchmark_file="results/benchmark_results.txt"
v8_changes="results/v8_changes.txt"

original_dir=$(pwd)

#Recompile wasm module
cd $WASM_ASSETS
wat2wasm --enable-threads "wasm_functions.wat"
cd $original_dir

#Run original d8
cd "$d8_dir"
output_string=$(./d8 "$WASM_ASSETS/d8_js_wrapper.js" --print-wasm-code -- "$WASM_ASSETS/wasm_functions.wasm" "$WASM_ASSETS")

echo -e "#####Start of original unmodified V8 benchmark#####" > "$original_dir/$benchmark_file"
echo "$output_string" | grep -zoP -- '(?<=##Benchmark Start##)(?s)(.*?)(?=##Benchmark End##)' >> "$original_dir/$benchmark_file"
echo -e "\n#####End of original unmodified V8 benchmark#####\n" >> "$original_dir/$benchmark_file"

echo -e "\n#####Start of assembly compiled from original unmodified V8#####\n" > "$original_dir/$compiled_code_file"
echo "$output_string" | grep -zoP -- '(?s)--- WebAssembly code ---.*?--- End code ---' >> "$original_dir/$compiled_code_file"
echo -e "\n#####End of assembly compiled from original unmodified V8#####\n" >> "$original_dir/$compiled_code_file"

cd "$modified_d8_dir"
output_string=$(./d8 "$WASM_ASSETS/d8_js_wrapper.js" --print-wasm-code -- "$WASM_ASSETS/wasm_functions.wasm" "$WASM_ASSETS")

echo -e "\n#####Start of modified V8 benchmark#####" >> "$original_dir/$benchmark_file"
echo "$output_string" | grep -zoP -- '(?<=##Benchmark Start##)(?s)(.*?)(?=##Benchmark End##)' >> "$original_dir/$benchmark_file"
echo -e "\n#####End of modified V8 benchmark#####" >> "$original_dir/$benchmark_file"

echo -e "\n#####Start of assembly compiled from modified V8#####\n" >> "$original_dir/$compiled_code_file"
echo "$output_string" | grep -zoP -- '(?s)--- WebAssembly code ---.*?--- End code ---' >> "$original_dir/$compiled_code_file"
echo -e "\n#####End of assembly compiled from modified V8#####" >> "$original_dir/$compiled_code_file"

sed -i 's/\x0/\n/g' "$original_dir/$benchmark_file"
sed -i 's/\x0/\n/g' "$original_dir/$compiled_code_file"

git diff "$d8_dir/../../src/" "$modified_d8_dir/../../src" > "$original_dir/$v8_changes"

#WIP, use awk to grep assembly instructions and compare them for the same function 
#awk '{for (i=4; i<=NF; i++) printf "%s%s", $i, (i<NF ? OFS : ""); print ""}' compiled_code.txt