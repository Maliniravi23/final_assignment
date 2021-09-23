arr=
for (( n=0; n<10; n++ ))
do
	random_no=$((RANDOM%100+1000))
	echo "$random_no"
	arr[$n]=$random_no
	#n=$n+1
done
echo "array element=${arr[@]}"
length=${#arr[*]}
echo "length of an array:$length"
#second largest element without sorting
largest=${arr[0]}
echo "$largest"
second_Largest='unset'

for((i=1; i < $length; i++))
do
  if [[ ${arr[i]} > $largest ]]
  then
    second_largest=$largest
    largest=${arr[i]}
  elif (( ${arr[i]} != $largest )) && { [[ "$second_Largest" = "unset" ]] || [[ ${arr[i]} > $second_Largest ]]; }
  then
    second_Largest=${arr[i]}
  fi
done

echo "second_Largest = $second_largest"

#second smallest element without sorting
if [ $length == 1 ]
then
	smallest=second_smallest=${arr[0]}
elif [[ $arr[0] < $arr[1] ]]
then
	smallest=${arr[0]}
	second_smallest=${arr[1]}
else
	smallest=$arr[1]
	second_smallest=${arr[0]}
fi

for (( i=2; i<$length; ++i ))
do
	if [[ ${arr[i]} < $smallest ]]
	then
		second_smallest=$smallest
		smallest=${arr[i]}

	fi
done
echo "Second smallest is : $second_smallest"