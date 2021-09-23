echo -n "Enter number : "
read n
 
if [ $n == 1 ]
then
	echo " $n is one"
elif [ $n == 10 ]
then
	echo "$n is tens"
elif [ $n == 100 ]
then
	echo "$n is hundreds"
elif [ $n == 1000 ]
then
	echo "$n is Thousands"
elif [ $n == 10000 ]
then
	echo "$n is Tens of Thousands"
elif [ $n == 100000 ]
then
	echo "$n is Hundreds of thousands"
elif [ $n == 1000000 ]
then
	echo "$n is Million"
else
	echo "$n is not present"
fi

