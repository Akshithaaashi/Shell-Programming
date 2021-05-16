#!/bin/bash -x

for ((var=0; var<=10; var++))
do
randomNumbers[var]=$(($((RANDOM%900))+100))
done
echo ${randomNumbers[@]}
max=0
secondmax=0
min=1000
secondmin=1000
for i in ${randomNumbers[@]}
do
if [ $i -gt $max ]
then
secondmax=$max
max=$i
fi
if [[ $max -gt $i && $i -gt $secondmax ]]
then
secondmax=$i
fi
if [ $i -lt $min ]
then
secondmin=$min
min=$i
fi
if [[ $i -lt $secondmin && $i -ne $min ]]
then
secondmin=$i
fi
done
echo second maximum element is $secondmax
echo second minimum element is $secondmin
