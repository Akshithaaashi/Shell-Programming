#!/bin/bash

read -p "enter the size: " n

	echo enter array elements
for((var=0; var<$n; var++))
do
read value
arr[var]=$value
done

	echo ${arr[@]}
found=0

for((i=0; i<$(($n-2)); i++))
do
for((j=$(($i+1)); j<$(($n-1));j++))
do
for((k=$(($j+1));k<$n;k++))
do
if [ $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ]
then
	echo zero sum exists
	echo triplets are ${arr[i]} ${arr[j]} ${arr[k]}
found=1
fi
done
done
done

if [ $found -eq 0 ]
then
	echo zero sum does not exist
fi
