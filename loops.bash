#!/bin/bash

((valid = true))
((count = 1))

while [ $valid ]
do 
echo $count
if [ $count -eq 5 ]
then 
break
fi
((count++))
done

for((i = 5; i>0; i--))
do 
echo -n "$i "
done
printf "\n"