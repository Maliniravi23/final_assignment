echo "Enter the Weekday number from (1 to 6) :"
read n

case $n in
	1)
		echo "$n is Monday"
		;;
	2)
		echo "$n is Tuesday"
		;;
	3)	
		echo "$n is Wednesday"
		;;
	4)
		echo "$n is Thursday"
		;;
	5)
		echo "$n is Friday"
		;;
	6) 
		echo "$n is Saturday"
		;;
	*)
		echo "$n is Sunday"
		;;
esac