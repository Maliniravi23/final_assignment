echo "Enter the three input : "
read a b c

declare -A dict1
declare -A dict2
declare -A dict3
declare -A dict4
dict1=$((a+b*c))
dict2=$((a*b+c))
dict3=$((c+a/b))
dict4=$((a%b+c))
echo "$dict1"
echo "$dict2"
echo "$dict3"
echo "$dict4"
nos=("$dict1" "$dict2" "$dict3" "$dict4")
echo ${nos[*]}
length=${#nos[*]}
echo "$length"


# sorting in Ascending order
for (( i = 0; i < $length ; i++ ))
do
for (( j = $i; j < $length; j++ ))
do
if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done
# Printing the sorted number in Ascending order
echo -e "\nSorted Numbers is Ascending order "
for (( i=0; i < $length; i++ ))
do
echo ${nos[$i]}
done

# sorting in Descending order
for (( i = 0; i < $length ; i++ ))
do
for (( j = $i; j < $length; j++ ))
do
if [ ${nos[$i]} -lt ${nos[$j]}  ]; then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done
# Printing the sorted number in descending order
echo -e "\nSorted Numbers is Descending order "
for (( i=0; i < $length; i++ ))
do
echo ${nos[$i]}
done