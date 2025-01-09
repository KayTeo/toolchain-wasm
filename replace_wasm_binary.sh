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

# Check if the correct number of arguments is provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <input_file> <output_file> <target_hex> <replacement_hex>"
    exit 1
fi

# Arguments
input_file="$1"
output_file="$2"
target_hex="$3"
replacement_hex="$4"

# Validate hex input (check if target and replacement are valid hex strings)
if ! [[ "$target_hex" =~ ^[0-9a-fA-F]+$ ]] || ! [[ "$replacement_hex" =~ ^[0-9a-fA-F]+$ ]]; then
    echo "Error: Target and replacement hex values must be valid hexadecimal strings."
    exit 1
fi

# Run the replacement function
replace_hex_in_wasm "$input_file" "$output_file" "$target_hex" "$replacement_hex"

