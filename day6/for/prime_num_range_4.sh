echo "Enter two range: "
read num1 num2

for mun in `seq $num1 $num2`
do
	ret=$(factor $mun | grep $mun | cut -d ":" -f 2 | cut -d " " -f 2)

	if [ "$ret" == "$mun" ] 
	then 
		echo "$mun is prime" 
	fi 
done
