echo "Enter the number"
read a b c
if [ $a -gt $b ]
then
	echo "$a is the greatest  number"
elif [ $b -gt $c ]
then 
	echo "$b is greatest number"
else
	echo "$c is greatest number"
fi
