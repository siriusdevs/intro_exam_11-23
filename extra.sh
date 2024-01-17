#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Неправильное число аргументов!"
    exit 1
fi

file=$1

if [[ ! -f $file ]]
then
    echo "файла $file не существует!"
    exit 2
fi

count2=0
count3=0
count4=0
count5=0

while read line
do
    case $line in
        *2) count2=$(($count2 + 1));;
        *3) count3=$(($count3 + 1));;
        *4) count4=$(($count4 + 1));;
        *5) count5=$(($count5 + 1));;
        *) echo "Полученны не корректные данные!"; exit 3;;
    esac
done < $file

echo "кол-во 5: $count5
кол-во 4: $count4
кол-во 3: $count3
кол-во 2: $count2"