# taking input from user
echo "enter  Numbers in array:"
read -a array
#printing the element in an array
echo "${array[@]}"
#printing the length
length=${#array[@]}
echo "enter maximum number $length"

echo "Second largest element is $second_Largest"
printf '%s\n' "Second largest number is :${array[@]}" | sort -n | tail -2 | head -1

for (( i = 0; i < $length ; i++ ))
do
for (( j = $i; j < $length; j++ ))
do
if [ ${array[$i]} -gt ${array[$j]}  ]; then
t=${array[$i]}
array[$i]=${array[$j]}
array[$j]=$t
fi
done
done
# Printing the sorted number in Ascending order
#echo -e "\nSorted Numbers is Ascending order "
for (( i=0; i < $length; i++ ))
do
echo ${array[$i]}
done
echo "Second smallest number is : ${array[1]}"



