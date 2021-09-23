touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
#echo `ls *.log.1`
for name in `ls *.log.1`
do
	#renamefile =`mv -- "$name" "${name%.log.1}.log"`
	fileNameWithoutExtension=`echo $name | awk -F. '{ print $1 }'`
	echo $fileNameWithoutExtension
	#rm -rf *.log
	DATE=`date '+%d%m%Y'`
	echo "New updated file name - $fileNameWithoutExtension.$DATE.log"
done
