#!/bin/bash -x

num1=$(($((RANDOM%900))+100))
num2=$(($((RANDOM%900))+100))
num3=$(($((RANDOM%900))+100))
num4=$(($((RANDOM%900))+100))
num5=$(($((RANDOM%900))+100))

if [[ $num1 -gt $num2 && $num1 -gt $num3 && $num1 -gt $num4 && $num1 -gt $num5 ]]
then 
max=$num1
elif [[ $num2 -gt $num1 && $num2 -gt $num3 && $num2 -gt $num4 && $num2 -gt $num5 ]]
then 
max=$num2
elif [[ $num3 -gt $num1 && $num3 -gt $num2 && $num3 -gt $num4 && $num3 -gt $num5 ]]
then 
max=$num3
elif [[ $num4 -gt $num1 && $num4 -gt $num2 && $num4 -gt $num3 && $num4 -gt $num5 ]]
then 
max=$num4
else
max=$num5
fi
echo "maximum value is $max"

if [[ $num1 -lt $num2 && $num1 -lt $num3 && $num1 -lt $num4 && $num1 -lt $num5 ]]
then 
min=$num1
elif [[ $num2 -lt $num1 && $num2 -lt $num3 && $num2 -lt $num4 && $num2 -lt $num5 ]]
then 
min=$num2
elif [[ $num3 -lt $num1 && $num3 -lt $num2 && $num3 -lt $num4 && $num3 -lt $num5 ]]
then 
min=$num3
elif [[ $num4 -lt $num1 && $num4 -lt $num2 && $num4 -lt $num3 && $num4 -lt $num5 ]]
then 
min=$num4
else
min=$num5
fi
echo "minimum value is $min"
