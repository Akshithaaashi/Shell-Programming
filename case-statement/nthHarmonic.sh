#!/bin/bash -x

read -p "enter a number: " n
HarmonicNum=0
for (( i=1; i<=n; i++))
do
HarmonicNum=`echo "scale=2;$HarmonicNum+(1/$i)" | bc`
done
