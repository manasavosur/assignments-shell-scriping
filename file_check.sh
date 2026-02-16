#!/bin/sh

file=$1

[ -z "$file" ] && echo "Provide file name" && exit 1

if [ -e "$file" ]; then
    echo "Exists"
    [ -r "$file" ] && echo "Readable" || echo "Not readable"
    [ -w "$file" ] && echo "Writable" || echo "Not writable"
    [ -d "$file" ] && ls "$file"
else
    echo "Not present"
fi
