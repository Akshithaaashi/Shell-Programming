!#/bin/bash -x

 empCheck=$((RANDOM%3))

if [ $empcheck -eq 1 ]
then
 empHrs=8
elif [ $empCheck -eq 2]
then
  empHrs=4
else
  empHrs=0
fi
wage=$(($empRatePerHr*$empHrs))
