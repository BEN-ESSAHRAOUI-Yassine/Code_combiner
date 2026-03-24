#!/bin/bash

# Usage: ./combine_files.sh /path/to/directory output.txt

ROOT_DIR="$1"
OUTPUT_FILE="$2"

if [ -z "$ROOT_DIR" ] || [ -z "$OUTPUT_FILE" ]; then
    echo "Usage: $0 <directory> <output_file>"
    exit 1
fi

# Remove previous output file if exists
> "$OUTPUT_FILE"

# Find only the desired extensions
find "$ROOT_DIR" -type f \( -iname "*.html" -o -iname "*.php" -o -iname "*.sql" -o -iname "*.css" \) | while read -r file; do
    # Get relative path
    rel_path="${file#$ROOT_DIR/}"

    # Write header
    echo "---File-Name-:------------ $rel_path ----------------" >> "$OUTPUT_FILE"

    # Write file content
    cat "$file" >> "$OUTPUT_FILE"

    # Add spacing
    echo -e "\n" >> "$OUTPUT_FILE"
done

echo "Done! Combined output saved to: $OUTPUT_FILE"
