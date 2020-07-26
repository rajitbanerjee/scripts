#!/bin/bash
<<DETAILS
Copy all python/bash scripts (without their extensions) in the specified directory 
to another specified destination.

Ideally, the destination folder should be added to $PATH.
This allows to scripts to be executed from any working directory!

Usage:
    $ ./add-scripts-to-bin.sh <dir> <destination>

Default <dir> is ./
Default <destination> is /usr/local/bin/custom_scripts (may need sudo 
priveleges for this, else change destination if not available).

E.g.
    $ sudo ./add-scripts-to-bin.sh
DETAILS

SRC="./"
if [[ "$1" != "" ]]; then
    let SRC="$1"
fi

DEST="/usr/local/bin/custom_scripts"
if [[ "$2" != "" ]]; then
    let DEST="$2"
fi

mkdir -p "$DEST"

for FILE in "$SRC"*; do
    if [[ -f "$FILE" ]]; then
        if [[ ${FILE: -3} == ".py" ]] || [[ ${FILE: -3} == ".sh" ]]; then
            NAME=$(basename $FILE)
            cp "$FILE" "$DEST/${NAME%.*}"
            chmod +x "$DEST"/*
        fi
    fi
done

echo "$DEST:"
ls -la $DEST