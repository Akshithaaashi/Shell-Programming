#!/bin/bash

a1=$1
result=0
rem=0
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
function primeOrNot()
{

n=$1

for((i=2; i<=$n/2; i++))
do
  ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number."

}
ans="$( palindromeOrNot $a1 )"
ans2="$( primeOrNot $a1 )"
echo $ans2
if [ $ans -eq $a1 ]
then
echo $a1 is palindrome
else
echo $a1 is not palindrome
fi

ans3="$( primeOrNot $ans )"

echo $ans3
