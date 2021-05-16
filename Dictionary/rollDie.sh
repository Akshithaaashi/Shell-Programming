#!/bin/bash

declare -A dice
index=0
minRep=10
while [ 1 -eq 1 ]
do
num=$(($((RANDOM%6))+1))
dice[index]=$num
((index++))
((counter[num]++))
if [ $((${counter[num]}+0)) -eq 10 ]
then
max=$num
maxRep=$((${counter[num]}+0))
break
fi
done
for((var=1; var<7; var++))
do
value=$((${counter[var]}+0))

if [ $value -lt $minRep ]
then
min=$var
minRep=$value
fi
done

echo ${counter[@]}
echo the number $max is repeated $maxRep times
echo the number $min is repeated $minRep times
