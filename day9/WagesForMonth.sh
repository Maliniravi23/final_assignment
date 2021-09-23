IS_PART_TIME=1
IS_FULL_TIME=2
NUM_WORKING_DAYS=20
EMP_RATE_PER_HR=20
MAX_HRS_IN_MONTH=160

totalEmpHr=0
totalWorkingDays=0

function getWorkHrs(){
	case $empCheck in
   		$IS_FULL_TIME)
      			empHrs=8
      			;;
  		$IS_PART_TIME)
      			empHrs=4
      			;;
   		*)
      			empHrs=0
      			;;
	esac
	echo $empHrs
}

function getEmpWage(){
	local empHr=$1
	echo $((empHrs * EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
	 $totalWorkingDays -lt $NUM_WORKING_DAYS ]] 
do
	((totalWorkingDays+illl))
	empCheck=$((RANDOM%3))
	echo "empCheck: $empCheck"
	empHrs="$( getWorkHrs $empCheck )"
	echo "empHrs: $empHrs"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	echo "totalEmpHrs: $totalEmpHrs"
	monthlyWage["$totalWorkingDays"]="$( getEmpWage $empHrs )"
done
monthlySalary=$((totalEmpHrs * EMP_RATE_PER_HR))
echo "Monthly Salary is : $monthlySalary"
echo "Monthly Wages : ${monthlyWage[@]}"
	