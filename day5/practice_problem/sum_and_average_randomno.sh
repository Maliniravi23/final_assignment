sum=0
length=5
for i in {1..5}
do
	var=$((10+$RANDOM %5))
	sum=$((sum+var))
	echo $var
done
echo "sum of random no : $sum"
avg=$(echo $sum/$length | bc -l)
echo "average : $avg"



