#!//

source=/home//Dokument/source
dest=/home//Dokument/destination

for file in $(find $source -printf "%P\n") ; do
	if [ -a $source/$file -nt $dest/$file ] ; then
		echo "Newer file detected, copying..."
		cp -r $source/