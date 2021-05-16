#!/bin/bash -x

echo “Enter the limit:”
 read a
echo “Enter the numbers”

for(( i=0 ;i<a; i++ ))
	do
	read e
b[i]=$e
done
for(( i=1; i<n; i++ ))
do
for(( j=0; j<n-i; j++))
do
if [ ${b[$j]} -gt ${b[$j+1]} ]
then
t=${b[$j]}
b[$j]=${b[$j+1]}
b[$j+1]=$t
fi
done
done
echo “Sorted array is”
for(( i=0; i<a; i++ ))
do
echo “${b[$i]}”
done
echo “Enter the element to be searched :”
read s
l=0
c=0
u=$(($a-1))
while [ $l -le $u ]
do
mid=$(((( $l+$u ))/2 ))
if [ $s -eq ${b[$mid]} ]
then
c=1
break
elif [ $s -lt ${b[$mid]} ]
then
u=$(($mid-1))
else
l=$(($mid+1))
fi
done

if [ $c -eq 1 ]

then

echo “Element found at position $(($mid+1))”

else

echo “Element not found”

fi
