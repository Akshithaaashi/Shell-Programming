#!/bin/bash -x

read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
 num1=$(($a+$b*$c))
 num2=$(($a%$b+$c))
 num3=$(($c+$a/$b))
 num4=$(($a*$b+$c))


if [[ $num1 -gt $num2 && $num1 -gt $num3 && $num1 -gt $num4 ]]
  then 
	max=$num1
elif [[ $num2 -gt $num1 && $num2 -gt $num3 && $num2 -gt $num4 ]]
  then 
	max=$num2
elif [[ $num3 -gt $num1 && $num3 -gt $num2 && $num3 -gt $num4 ]]
  then 
	max=$num3
else
	max=$num4
fi

echo "maximum value is $max"

if [[ $num1 -lt $num2 && $num1 -lt $num3 && $num1 -lt $num4 ]]
  then 
	min=$num1
elif [[ $num2 -lt $num1 && $num2 -lt $num3 && $num2 -lt $num4 ]]
  then 
	min=$num2
elif [[ $num3 -lt $num1 && $num3 -lt $num2 && $num3 -lt $num4 ]]
  then 
	min=$num3
else
  min=$num4
fi
 echo "minimum value is $min"

