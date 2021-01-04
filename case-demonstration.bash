#!/bin/bash

echo "Enter your Grade:"

read grade

case $grade in 
    A) 
      echo "Excellent";;
    B) 
      echo "Good";;
    C) 
      echo "Okay";;
    D | E)
       echo "Very Bad";;
    F) 
      echo "Failed";;
    *) 
      echo "You didn't entered a grade!";;
esac