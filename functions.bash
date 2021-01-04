#!/bin/bash

function fun(){
    echo "This line is printed using a function."
}

# writing down the name of funtion will call it....
fun



# functions with parameters...

function multiply() {
    area=$(($1 * $2))
    echo "Multiplication of $1 and $2 is: $area."
}

multiply 13 38 # Calling multiply function with arguments tailing it.



# functions with return values...

function returning_function() {
    string="\nThis is the returned value."
    echo -e "A random something."
    echo $string
    a=$((7*8))
}


returning_function # This will simply call the function and the echo command in the 'returning_function' will print on the console.

x=$(returning_function) # When function is called using and it's value is dereferenced uisng $ operator the last echo statment will be returned from the function
echo -e $x


: 'arguments in functions are refereced, instead of called by values.
 As you can see below value of the variable x would be changed in the following echo statment according to fun2.'

x=100
function fun2(){
    (($1=$2))
}

fun2 x 34343
echo $x