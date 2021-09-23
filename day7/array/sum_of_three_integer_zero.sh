arr=("1" "2" "4" "-3" "-1" "5" "6")
n=${#arr[@]}
echo "length : $n"
for (( i=0; i<$n; i++ ))
do
arr1=${arr[i]}
for (( j=$i+1; j<$n; j++ ))
do
arr2=${arr[j]}
for (( k=$j+1; k<$n; k++ ))
do
arr3=${arr[k]}
sum=$((arr1+arr2+arr3))
if [ $sum == 0 ]
then
echo "${arr[i]} , ${arr[j]} , ${arr[k]} "
fi
done
done
done
