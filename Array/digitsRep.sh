#!/bin/bash -x

index=0
for ((var=0; var<=100; var++))
do
rem=$(($var%11))
if [[ $rem -eq 0 && $var -ne 0 ]]
then
arr[((index++))]=$var
fi
done
	echo ${arr[@]}
