echo "Enter a number"
read n
function prime(){
for (( i=2; i<=$n/2; i++ ))
do
	if [ $((n%i)) -eq 0 ]
	then
		echo "$n is not a prime"
		exit
	fi
done
echo "$n is prime"
}

num=0
on=$n
function palindrome(){
while [ $n -gt 0 ]
do
num=$(expr $num \* 10)
k=$(expr $n % 10)
num=$(expr $num + $k)
n=$(expr $n / 10)
done
if [ $num -eq $on ]
then
echo "palindrome"
else
echo "not palindrome"
fi
}
r=`prime $number`
echo "$r"
rev=`palindrome $number`
#echo "$rev"

if ( $rev == $r )
then
	echo "palindrome is also prime"
else
	echo "palindrome is not a prime"
fi
