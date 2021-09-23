echo " Enter the three number value1 value2 value3 : "
read a b c

operation_1=$((a+b*c))
echo "operation_1 : $operation_1"

operation_2=$((a%b+c))
echo "operation_2 : $operation_2"

operation_3=$((c+a/b))
echo "operation_3 : $operation_3"

operation_4=$((a*b+c))
echo "operation_4 : $operation_4"

if [ $operation_1 > $operation_2 ] && [ $operation_1 > $operation_3 ] && [ $operation_1 > $operation_4 ]
then
	echo "maximum=$operation_1"
elif [ $operation_2 > $operation_1 ] && [ $operation_2 > $operation_3 ] && [ $operation_2 > $operation_4 ]
then
	echo "maximum=$operation_2"
elif [ $operation_3 > $operation_1 ] && [ $operation_3 > $operation_2 ] && [ $operation_3 > $operation_4 ]
then
	echo "maximum=$operation_3"
elif [ $operation_4 > $operation_1 ] && [ $operation_4 > $operation_2 ] && [ $operation_4 > $operation_3 ]
then
	echo "maximum=$operation_4"
fi


if [ $operation_1 -lt $operation_2 ] && [ $operation_1 -lt $operation_3 ] && [ $operation_1 -lt $operation_4 ]
then
	echo "minimum=$operation_1"
elif [ $operation_2 -lt $operation_1 ] && [ $operation_2 -lt $operation_3 ] && [ $operation_2 -lt $operation_4 ]
then
	echo "minimum=$operation_2"
elif [ $operation_3 -lt $operation_1 ] && [ $operation_3 -lt $operation_2 ] && [ $operation_3 -lt $operation_4 ]
then
	echo "minimum=$operation_3"
elif [ $operation_4 -lt $operation_1 ] && [ $operation_4 -lt $operation_2 ] && [ $operation_4 -lt $operation_3 ]
then
	echo "minimum=$operation_4"
fi