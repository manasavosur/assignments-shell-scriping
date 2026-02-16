#!/bin/sh

file=$1

# Step 1: check if argument given
if [ -z "$file" ]; then
    echo "Please provide a file or directory name"
    exit 1
fi

# Step 2: check if exists
if [ -e "$file" ]; then
    echo "File/Directory exists"

    # Step 3: readable check
    if [ -r "$file" ]; then
        echo "Readable"
    else
        echo "Not readable"
    fi

    # Step 4: writable check
    if [ -w "$file" ]; then
        echo "Writable"
    else
        echo "Not writable"
    fi

    # Step 5: if directory → list files
    if [ -d "$file" ]; then
        echo "It is a directory. Files inside:"
        ls "$file"
    fi

else
    echo "Not present"
fi
