#!/bin/bash

file_array=($(ls -ld .[a-z]?* | awk '{ print $9 }'))

counter=0

for elem in "${file_array[@]}"
do
	# if the file is an ASCII text file, then copy it to $HOME
	if [[ "$(file "$elem")" == "$elem: ASCII text" ]]; then
		echo "$elem"
		cp $elem $HOME

		((counter=counter+1))
	fi
done

echo "Copied $counter files to $HOME"
