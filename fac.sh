#!/usr/bin/sh
fac () {

i=1
a=1
while [ "$i" -lt 6 ]
    do
    a=$((a * i))
    i=$((i + 1))
    done    
echo $a
}

facn () {
   
    if [ "$1" -lt 2 ]
    then
    return $1
    else
        n1=$(expr $1 - 1 )
        facn $n1
        return $( expr $1 * $? )
    fi
}

cp $0 $(pwd)/backup.sh
ls
