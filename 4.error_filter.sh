#!/bin/sh

INPUT=$1
OUTPUT=$2

# check file exists
if [ ! -f "$INPUT" ]; then
    echo "File not found"
    exit 1
fi

# add header
echo "ERROR LINES" > "$OUTPUT"

# read file line by line
while read line
do
    echo "$line" | grep "ERROR" >> "$OUTPUT"
done < "$INPUT"

echo "Done. Check $OUTPUT"
