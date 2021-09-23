#print EmployeeName and TotalPay who has BasePay greater than 10000
cat data.csv | awk '{ if($4 >10000) {print $2,$7}}'

#aggregate Totalpay of employee whoes jobtitle is 'CAPTAIN'
awk -F ' ' '$3 ~ /CAPTAIN/ {print $0}' 'data.csv'
awk '$3 ~ /CAPTAIN/ {sum += $7} END {print sum}' 'data.csv'

#print Jobtitle and overtimepay who has overtimepay is between 7000 and 10000
awk '$5 >= 7000 && $5 <= 10000 {print $3,$5}' 'data.csv'

#print average Basepay
cat data.csv | grep CAPTAIN | awk '{ sum+=$4 } END {print sum/NR }'

