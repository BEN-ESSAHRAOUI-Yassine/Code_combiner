#!/bin/bash

# Usage: ./split_combined.sh combined.txt output_folder

INPUT_FILE="$1"
OUTPUT_DIR="$2"

if [ -z "$INPUT_FILE" ] || [ -z "$OUTPUT_DIR" ]; then
    echo "Usage: $0 <combined_file> <output_directory>"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

current_file=""

while IFS= read -r line; do
    # Detect header lines
    if [[ "$line" =~ ^---\ (.*)\ ---$ ]]; then
        rel_path="${BASH_REMATCH[1]}"
        out_path="$OUTPUT_DIR/$rel_path"

        # Create directory structure
        mkdir -p "$(dirname "$out_path")"

        # Start new file (overwrite if existing)
        current_file="$out_path"
        > "$current_file"
    else
        # Write content to the current file (if any file is active)
        if [ -n "$current_file" ]; then
            echo "$line" >> "$current_file"
        fi
    fi
done < "$INPUT_FILE"

echo "Done! Files written to: $OUTPUT_DIR"
