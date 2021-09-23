random_no=$((RANDOM%3))
isFulltime=1
isPartime=2
salary=0
EMP_WAGE_PER_HOUR=20
FullTimeHrs=8
PART_TIME_HR=8


echo "Employee Present/Absent : $random_no"


if [ $random_no -eq $isFulltime ]
then
    salary=$((FullTimeHrs*EMP_WAGE_PER_HOUR))
    echo "Employee Present"
    echo "Employee Joined As Full-Time"
    echo "Salary Is : $salary"
elif [ $random_no -eq $isPartime ]
then
    salary=$((PART_TIME_HR*EMP_WAGE_PER_HOUR))
    echo "Employee Present"
    echo "Employee Joined As Part-Time"
    echo "Salary Is : $salary"
else
    echo "Employee Absent"
    echo "Salary Is : $salary"
fi