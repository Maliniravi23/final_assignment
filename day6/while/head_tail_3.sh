count_head=0
count_tail=0
while [[ $count_head -lt 11 ]] || [[ $count_tail -lt 11 ]]
do
	random_no=$((RANDOM%2))
	#echo $random_no
	if [ $random_no == 1 ]
	then
		count_head=$((count_head+1))
		#echo "head count:$count_head"
	elif [ $random_no == 0 ]
	then
		count_tail=$((count_tail+1))
		#echo "tail count:$count_tail"
	fi
done
#count_head=$((count_head+1))
echo "head count:$count_head"
#count_tail=$((count_tail+1))
echo "tail count:$count_tail"
if [ $count_head == 11 ]
then
	echo "Head wins"
elif [ $count_tail == 11 ]
then
	echo "Tail wins"
fi