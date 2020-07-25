#!/bin/bash
<<DETAILS
Rename individual files, or all files in the specified directories, to 
replace spaces with underscores, and convert file name to lower case.

Usage:
1. Rename all files in current directory
    $ ./remove-spaces.sh ./
2. Rename all files in multiple directories
    $ ./remove-spaces.sh dir1/ dir2/ dir3/
3. Rename individual files
    $ ./remove-spaces.sh file1 file2 file3
DETAILS

# Change Internal Field Separator to simplify file renaming process (for file names containing spaces) 
IFS='
'

for DIR in $*
do
    for FILE in $DIR*
    do
        if [[ -f $FILE ]]
        then
            # Get parent directory
            PARENT="$(dirname $FILE)"
            # Change spaces to underscores and convert to lower case
            NEW_NAME="$(echo $(basename $FILE) | tr '[:upper:]' '[:lower:]' | tr -s ' ' | tr ' ' '_')"
            # Rename file
            mv $FILE "$PARENT/$NEW_NAME"
        fi
    done
done