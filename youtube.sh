#!/bin/bash
# Download a YouTube video (or audio only)
# Usage: ./youtube.sh

print_help() {
    echo "
Prerequisites: Python 3.4+ (with pip)
Usage:
1. List all available streams:
    $ ./youtube.sh <URL> -l
2. Download mp3 audio file only:
    $ ./youtube.sh <URL> -mp3
3. Download 360p video file:
    $ ./youtube.sh <URL>
4. Download a specific stream (usually, it's itag=22 for 720p, itag=18 for 360p):
    $ ./youtube.sh <URL> -i 22
    $ ./youtube.sh <URL> -i 18
"
}

# Change Internal Field Separator to simplify file renaming process (for file names containing spaces)    
IFS='
'

case $1 in 
    "https://www.youtube.com/watch"*)

        pip install pytubeX
        case $2 in
            "-mp3")
                pytubeX $1 -a
                # Save file in mp3 format
                NAME="$(ls -Art | tail -n 1)" 
                mv $NAME "${NAME%.*}.mp3"
                echo "Audio file saved as: ${NAME%.*}.mp3"
                ;;
            "-l")
                pytubeX $1 -l
                ;;
            "-i")
                pytubeX $1 --itag=$3  
                ;; 
            "")
                pytubeX $1 --itag=18
                ;;
            *)
                print_help
                ;;
        esac

        ;;

    *)
        print_help
        ;;
esac
