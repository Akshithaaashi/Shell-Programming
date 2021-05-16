#!/bin/bash

echo "Enter a num"
	read num
result=1

for ((  counter=2; counter<$num; counter++ ))
do
    if  [  $(($num%$counter))  -eq 0 ]
    then
        result=$(($result+1))
    fi
done
if [  $result -eq 1 ]

then
  echo "given number is a prime"
else
  echo "given number is not a prime number"
fi
