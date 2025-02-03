#!/bin/bash

if [ "$#" -ne 2 ]
then
	echo "the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched within these files, referred to below as searchstr"
	exit 1
else
	if [ ! -d "$1" ]
	then
		echo "First argument must be a directory"
		exit 1
	else
		num_files_and_dir=$(find "$1" -mindepth 1 -type f -o -type d | wc -l)
		total_matches=$(grep -rc "$2" "$1" | awk -F: '{s+=$2} END {print s}')
		echo "The number of files are $num_files_and_dir and the number of matching lines are $total_matches"
	fi
fi

