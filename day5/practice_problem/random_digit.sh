#random to get single digit

#random to get dice number between 1 to 6

#add 2 random number and print the result
dice1=$((RANDOM%6))
dice2=$((RANDOM%6))
sum=$((dice1+dice2))
echo "dice1: $dice1"
echo "dice2: $dice2"
echo "sum of two dice is: $sum"


