
# Assignment 1 – File Permission Checker 


## Objective:
Write a shell script that accepts a file/directory as input and checks whether it exists, is readable, writable, or not present. If it is a directory, list its contents.

## Operators Used:
-e → exists
-r → readable
-w → writable
-d → directory
$1 → command-line argument
&& →  if true then run next

# Assignment 2 –  Count Lines, Words, and Characters

## objective: 
Write a shell script that accepts a filename as input and prints the number of lines, words, and characters, while handling empty files, missing files, and permission issues.

## Operators Used:
-z -	checks if input/variable is empty
-e - checks if file exists
-r -	checks read permission
-s -	checks file size > 0 (not empty)
&& means → if true
|| means → else

# Assignment 3 – String Replacement in Files 


## Objective:
Write a script that replaces all occurrences of a string in multiple files. Replace the string FOO with BAR in all .conf files in a given directory and its subdirectories.
Use find + sed.

## Operators Used:
sed- 	stream editor
-i -	edit file directly
s -	substitute
FOO -	old text
BAR -	new text
g -	replace all occurrences

# Assignment 4 – Filter ERROR Lines from File


## Objective:
Create a shell script that reads a CSV/log file line by line, filters lines containing ERROR, and saves them into a separate output file with a header.

## Operators Used:

###Condition operators
-f → checks if file exists
! → NOT (negation)

###Variables
$1 → input filename
$2 → output filename

###Redirection
> → create/overwrite file
>> → append to file

###Loop
while read line → reads file line by line

###Command

grep → filters lines containing a word
