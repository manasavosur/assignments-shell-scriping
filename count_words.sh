#!/bin/sh

file=$1

[ -z "$file" ] && echo "Provide filename" && exit 1
[ ! -e "$file" ] && echo "File not found" && exit 1
[ ! -r "$file" ] && echo "Permission denied" && exit 1

if [ ! -s "$file" ]; then
    echo "Lines: 0"
    echo "Words: 0"
    echo "Characters: 0"
else
    wc -l -w -c "$file"
fi
 

#or

#!/bin/sh

# file=$1

# # check argument
# if [ -z "$file" ]; then
#     echo "Provide a filename"
#     exit 1
# fi

# # file exists?
# if [ ! -e "$file" ]; then
#     echo "File does not exist"
#     exit 1
# fi

# # readable?
# if [ ! -r "$file" ]; then
#     echo "Permission denied (not readable)"
#     exit 1
# fi

# # empty file?
# if [ ! -s "$file" ]; then
#     echo "File is empty"
#     echo "Lines: 0"
#     echo "Words: 0"
#     echo "Characters: 0"
#     exit 0
# fi

# # counts using wc
# set -- $(wc "$file")

# echo "Lines: $1"
# echo "Words: $2"
# echo "Characters: $3"
