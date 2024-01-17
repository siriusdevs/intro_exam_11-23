if [[ $# -ne "2" ]];then
    echo "No1"
    exit 0
fi

if (( $1 -s ));then
    echo "No"
    exit 1
fi


while read val
do
    if [[ $val =~ $2 ]];then
        echo $val
    fi
done < $1


