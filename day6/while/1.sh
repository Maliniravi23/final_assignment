echo "Input number"
read no
pow=256
counter=0
ans=1
while [ $ans -lt $pow ]
do
        ans=`expr $ans \* $no`
        
done

echo "$no power of $power is $ans"