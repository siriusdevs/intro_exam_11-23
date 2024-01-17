
if [[ $# -ne "1" ]];
then
    echo "Не верно переданы аргументы"
    exit 0
fi

five=0
four=0
three=0
two=0

while read val

do

    if [[ $val =~ "5" ]];then
        five=$(( $five + 1 ))
    elif [[ $val =~ "4" ]];then
        four=$(( $four + 1 ))
    elif [[ $val =~ "3" ]];then
        three=$(( $three + 1 ))
    elif [[ $val =~ "2" ]];then
        two=$(( $two + 1 ))
    fi
    echo $val

done < $1


echo Пять: $five Четыре: $four Три: $three Два: $two

