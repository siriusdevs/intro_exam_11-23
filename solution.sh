#/usr/bin/bash
while read line
do
    for word in $line
    do
        if [[ $2 == $word ]]
        then
            echo $line
        fi
    done
done < $1
