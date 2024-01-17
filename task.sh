#!/bin/bash
sum=0
N=$1
for ((i=0;i<=$N;i++))
do
    if [[ $i%2 -eq 0 ]]
    then
        sum=$(($sum + $i))
    fi
done
echo $sum