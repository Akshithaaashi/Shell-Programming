#!/bin/bash

read -p "enter value : " d
read -p "enter fc or cf : " co

function convertTemp()
{
	answer=0
case $co in
	fc)
if [[ $d -lt 32 || $d -gt 212 ]]
then

	echo "it is not within range"
exit 0
fi
	ans=$(($d*9/5+32))
;;
	cf)
if [[ $d -lt 0 || $d -gt 100 ]]
then
	echo "it is not within range"
exit 0
fi
answer=$(($d-32*5/9))
;;
esac
echo $answer
}

echo "$( convertTemp $d $co )"
