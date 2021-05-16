#!/bin/bash -x

empRatePerHR=20
isFullTime=1
isPartTime=2
numOfWorkingDays=5
totalEmpHrs=0

for ((day=1; day<=$numOfWorkingDays; day++))
do
		empCheck=$((Random%3))
      case $empCheck in
		$isFullTime)
       empHrs=8
			;;
		 $isPartTime)
		empHrs=4
		;;
		*)
 		empHrs=0
		;;
esac
totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
wage=$(($empRatePerHr*$totalEmpHrs))
