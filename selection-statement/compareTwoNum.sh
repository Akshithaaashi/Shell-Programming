#!/bin/bash -x


num1=10
num2=10

if [ $num1 -gt $num2 ]
then
    echo $num1 is greater than $num2
elif[ $num1 -eq $num2]
then
  echo $num1 is equal to $num1
else
echo $num2 is greater than $num1
fi
