echo -n "Enter number"
read n

case $n in
	1)
		echo "$n is One"
		;;
	10)	
		echo "$n is Ten"
		;;
	100)
		echo "$n is hundreds"
		;;
	1000)
		echo "$n is Thousands"
		;;
	10000)
		echo "$n is Ten of Thousands"
		;;
	100000)
		echo "$n is Hundreds of thousands"
		;;
	1000000)
		echo "$n is Million"
		;;
	*)
		echo "$n is not present"
		;;
esac