#!/bin/bash

# arguments
FOLDER=$1
EXTENSION=$2

# validation first argument
if [ -z "$1" ]
then
	echo "Argument FOLDER is obligatory."
	exit
else
	# validation second argument
	if [ -z "$2" ]
	then
		echo "Argument EXTENSION is obligatory."
		exit
	else
		echo “Folder: ” $FOLDER
		echo “Extension: ” $EXTENSION
		# find files and calculate sizes
		find $FOLDER -type f -name '*.'$EXTENSION -print0 |
		while IFS= read -r -d '' file; do
        		# calculate file size
        		fsize=$(wc -c < "$file")
        		fsize_mb=$(($fsize / 1024 / 1024))
			# only display file sizes bigger than 1MB
			if [ "$fsize_mb" -gt "1" ]
			then
        			printf '%s\n' "$file" "$fsize_mb MB"
			fi
		done

	fi
fi

# exit
echo "done!"
exit
