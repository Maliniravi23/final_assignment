arr=
function reverse(){
	unit_digit=0
	rev=""
		n=$1
	while [ $n -gt 0 ]
	do
		unit_digit=$(( $n % 10 ))
		n=$(( $n /10 ))
		rev=$(echo ${rev}${unit_digit})
	done
	if [ "$rev" -eq $1 ]
	then
		arr+=(${rev})
	fi
}
for (( i=0; i<=100; i++ ))
do
	if (( $i >9 ))
	then
		reverse $i
	fi
done

echo ${arr[@]}
