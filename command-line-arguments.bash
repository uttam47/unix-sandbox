#!/bin/bash

# print all the command line arguments

echo "Total number of arguments is :$#"


for args in "$@"
do
 
 # for printing in same line
 echo -n "$args "
 
 # for printing in different lines if the argumetns are actual strings instead of integers.
 echo $args
 
done


# print the sum of given integers in the command line arguments

sum=0
for args in "$@"
  do
    ((sum+=$args))
  done
echo -e "\nSum is :$sum"



# naming the arguments if given in a specific format which is to remove the dilimeters and selecting fields. 

for args in "$@"
 do
    index=$(echo $args | cut -d= -f1)
    value=$(echo $args | cut -d= -f2)
    
    case $index in 
     X | x) 
        x=$value;;
     Y | y)
        y=$value;;
     *);;
    esac

 done
 
((sum = x + y))
echo "The sum is : $sum"