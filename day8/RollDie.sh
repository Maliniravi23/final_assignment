n=10
declare -A dict1

for (( i=1; i<=$n; i++ ))
do
	dice1=$((RANDOM	%6+1))
	echo "dice=$dice1"
	dict1[$i]=$dice1
	echo "dict=$dict1"
done