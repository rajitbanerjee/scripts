#!/bin/bash
<<DETAILS
Copy all python/bash scripts (without their extensions) in the specified directory 
to another specified destination.

Ideally, the destination folder should be added to $PATH.
This allows to scripts to be executed from any working directory!

Usage:
    $ ./add-scripts-to-bin.sh <dir> <destination>

Default <dir> is `./`
Default <destination> is `/usr/local/bin/custom_scripts`.

E.g.
    $ ./add-scripts-to-bin.sh
DETAILS

SRC="./"
if [[ $1 != "" ]]; then
    let SRC=$1
fi

DEST="/usr/local/bin/custom_scripts"
if [[ $2 != "" ]]; then
    let DEST=$2
fi

sudo mkdir -p $DEST

for FILE in $1*; do
    if [[ -f $FILE ]] && ([[ ${FILE: -3} == ".py" ]] || [[ ${FILE: -3} == ".sh" ]]) ; then
        NAME=$(basename $FILE)
        sudo cp $FILE "$DEST/${NAME%.*}"
        sudo chmod +x $DEST/*
    fi
done