#!/bin/bash
# Download a YouTube video (or audio only)
# Usage: ./youtube.sh

HELP="\nPrerequisites: Python 3.4+ (with pip)
        \nUsage:\n
        1. List all available streams:\n
        \t$ ./youtube-download.sh <URL> -l\n
        2. Download audio file only:\n
        \t$ ./youtube-download.sh <URL> -a\n
        3. Download 360p video file:\n
        \t$ ./youtube-download.sh <URL>\n
        3. Download a specific stream (usually, it's itag=22 for 720p, itag=18 for 360p):\n
        \t$ ./youtube-download.sh <URL> -i 22\n
        \t$ ./youtube-download.sh <URL> -i 18\n"
        

case $1 in 
    "https://www.youtube.com/watch"*)

        pip install pytubeX
        case $2 in
            "-a")
                pytubeX $1 -a
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
                echo -e $HELP
                ;;
        esac

        ;;

    *)
        echo -e $HELP
        ;;
esac
