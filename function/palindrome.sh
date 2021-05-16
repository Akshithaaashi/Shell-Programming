#!/bin/bash

a1=$1
a2=$2
rem=0
result=0
function palindromeOrNot()
{

temp=$1
while [ $temp -gt 0 ]
do
rem=$(($temp%10))
result=$(($result*10+$rem))
temp=$(($temp/10))

done
	echo $result
}

ans="$( palindromeOrNot $a1 )"
ans2="$( palindromeOrNot $a2 )"
if [ $ans -eq $a1 ]
then
	echo $a1 is palindrome
else
	echo $a1 is not palindrome
fi

if [ $ans2 -eq $a2 ]
then
	echo $a2 is palindrome
else
	echo $a2 is not palindrome
fi
