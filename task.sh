#!/bin/bash

while read word
do
    if [[ $word == *$2* ]]
    then
        echo $word
    fi
done < $1