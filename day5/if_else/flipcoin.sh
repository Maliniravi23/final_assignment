random=$((RANDOM%2))
echo $random

if [ $random == 0 ]
then
	echo "It is head"
else 
	echo "It is tail"
fi