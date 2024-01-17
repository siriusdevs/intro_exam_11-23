#!/bin/bash

# read -p "Введите число: " num

if [[ $# -ne 1 ]]
then
    echo "Неправильное число аргументов!"
    exit 1
fi

num=$1

for ((i=1; i<=num; i+=2))
do
    echo $i
done