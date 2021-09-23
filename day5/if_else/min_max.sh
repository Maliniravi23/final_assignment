arr1=()
for i in {1..5}
do
	var=$((100+$RANDOM %5))
	#echo "random no :$var"
	arr1+=("$var")

done
echo ${arr1[*]}

max=${arr1[0]}
min=${arr1[0]}
#echo $max
#echo $min

for num in "${arr1[@]}"
do	
	#update maximum
	if [[ "$num" -gt "$max" ]]
	then
		max="$num"
	fi
	
	#update minimum
	if [[ "$num" -lt "$min" ]]
	then
		min="$num"
	fi
done

echo "Max is : $max"
echo "Min is : $min"

