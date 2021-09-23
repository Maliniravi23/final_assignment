#create two directory "original" and "updated"
mkdir original updated

#create a file "original-file.sh" and "updated-file.sh"
#touch original-file.sh updated-file.sh

#copy the file original-file.sh to original directory and updated-file.sh to updated directory
cp -r original-file.sh original
cp -r updated-file.sh updated

#find the difference between two directories
diff -r original updated

#copy of folder "original" to some other directory "original-backup"
mkdir original-backup
cp -r /home/malini/Documents/assignment/qn15/original/original-file.sh /home/malini/Documents/assignment/qn15/original-backup

#apply changes in 'original-file.sh'
#cat /home/malini/Documents/assignment/q15/original-file.sh
filename=/home/malini/Documents/assignment/qn15/original-backup/original-file.sh
sed -i 's/malini/madhu/g' $filename
sed -i 's/123/321/g' $filename
sed -i 's/12345/12346789/g' $filename

#find the difference between 'updated' and 'original-backup'
diff -r updated original-backup

