#!/bin/bash
source=/home/user/Dokument/source
dest=/home/user/Dokument/destination

for file in $(find $source -printf "%P\n") ; do
	if [-a $dest/$file ] ; then
	if [ $source/$file -nt $dest/$file ] ; then
		echo "Newer file detected, copying..."
		cp -r $source/$file $dest/$file
		else
		echo "File $file exists, skipping."
		fi
	else
	echo "$file is being copied over to $dest"
	cp -r $source/$file $dest/$file
	fi
done
