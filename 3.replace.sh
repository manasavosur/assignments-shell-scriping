#!/bin/bash

DIR=$1

# check directory exists
if [ ! -d "$DIR" ]; then
  echo "Directory not found"
  exit 1
fi

# find all .conf files and replace
find "$DIR" -type f -name "*.conf" -exec sed -i 's/FOO/BAR/g' {} +

echo "Replacement completed"
