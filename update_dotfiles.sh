#!/bin/bash

declare -a filenames=(".bashrc" ".bash_aliases" ".gitconfig" ".vimrc")

counter=0

# check if the files exist and copy to this directory
for elem in "${filenames[@]}"
do
	if [ ! -f ~/$elem ]; then
		echo "$elem does not exists, skipping..."
		continue
	fi

	cp ~/$elem .

	echo "~/$elem"
	((counter=counter+1))
done

echo "Updated $counter files."
