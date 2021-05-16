#!/bin/bash -x

declare -A month
for((var=0; var<51; var++))
do
month[var]=$(($((RANDOM%12))+1))

((counter[month[var]]++))
done

echo ${counter[@]}
