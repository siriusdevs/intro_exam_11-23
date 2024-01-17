#!/bin/bash

read -p "Введите конец диапазона N:" N

sum=0
x=0
for (( i=$x; i<=$N; i++ ))
do
  if (( $i % 2 != 0 ))
  then
    sum=$(( $sum + $i ))
  fi
done
echo "Сумма нечетных чисел: $sum"

