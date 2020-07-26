#!/bin/bash
# Display the Linux PATH variable with entries separated by \n. 
# The usual "echo $PATH" is messy.
# Usage: ./path.sh

source ~/.bashrc
tr ':' '\n' <<< \"$PATH\"