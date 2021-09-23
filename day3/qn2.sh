#move files from one folder to respective folder
touch abc.txt def.txt ghi.txt jkl.txt
echo `ls *.txt`
for basename in `ls *.txt`
do 
	fileNameWithoutExtension=`echo $basename | awk -F. '{ print $1 }'`
	echo $fileNameWithoutExtension
	mkdir $fileNameWithoutExtension
	cp -r $basename $fileNameWithoutExtension
done
