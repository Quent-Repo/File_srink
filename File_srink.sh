#!/bin/bash
Array=()
List_files='ls *.mp4'
for eachfile in $List_files
do
	Array+=($eachfile)
done
Array="${Array[@]:1}"
for object in "${Array[@]}"
do
	ffmpeg -i $object -b 1000k -vcodec wmv2 -acodec wmav2 -crf 19 -filter:v fps=fps=24 ${object::-3}mp4
done
