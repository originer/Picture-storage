#!/bin/bash

imgs=`./qrsctl listprefix picture ''`

i=0 
echo $imgs | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        ./qrsctl get picture $line ./$line
    fi
    i=$(($i+1))
done


