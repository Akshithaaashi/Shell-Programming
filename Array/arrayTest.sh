#!/bin/bash -x

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Grapes"

names=(abc 56 def 5623 xyz mno pqr)

echo ${Fruits[@]}
echo ${names[*]}
