#!/bin/bash

file_path=$1
input=$2

if [ "$#" -ne 2 ]
then
	echo "Provide 2 arguments"
	exit 1
else
	if echo "$input" > "$file_path"
	then
		echo "successfully wrote to file"
		exit 0
	else
		echo "Cannot create/write to file"
		exit 1
	fi
fi	
