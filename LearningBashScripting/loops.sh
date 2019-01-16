#!/bin/bash

a=5 # interger for comparison

# if statement

if [ $a -gt 4 ]; then # if interger is greater than 4 
    echo $a is greater then 4! # then echo 
else
    echo $a is not greater than 4! # eles echo
fi

# if statement

b="This is my string!" # string for comparison

if [[ $b =~ [0-9]+ ]]; then # if the string has an interger in it
    echo "There are numbers in the string: $b" # then echo
else
    echo "There are no numbers in the string: $b" # eles echo
fi



