#!/bin/bash

echo "Enter username"
read username
echo "Enter password"
read password

if [[ $username == "admin" && $password == "secret" ]];
then
echo "Valid user"
else 
echo "Invalid user"
fi

echo "Enter a number"
read numb

if [[ ($numb%2 -eq 0) ]];
then
echo "Number is even"
else 
echo "Number is odd"
fi

read x
read y
if [ $x -lt $y ];
then
echo "X is less than Y"
elif [ $y -lt $x ];
then
echo "X is greater than Y"
else
echo "X is equal to Y"
fi