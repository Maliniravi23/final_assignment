echo "Enter the year"
read leap
if [ `expr $leap % 4` -eq 0 ]
then
echo leap year
else
echo not a leap year
fi