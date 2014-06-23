#!/bin/bash

filename="$2.ogg"
youtube-dl "$1" --extract-audio --audio-format vorbis --audio-quality 0 -o "./$2.mp3"
togg -t "$2" -a "$3" $filename
