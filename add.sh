#!/bin/bash -x

x=100
y=100
result=$(($x+$y))
echo $result

read -p "enter the first numnber : " num1
read -p "enter the second number : " num2
result=$(($num1+$num2))
echo $result
