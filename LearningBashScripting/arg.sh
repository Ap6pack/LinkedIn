#!/bin/bash

# while loop that takes user defined using flags

while getopts u:p: option; do
    case $option in
        u) user=$OPTARG;; # user flag
        p) pass=$OPTARG;; # password flag
    esac
done

echo "User: $user / Pass: $pass"

while getopts u:p:ab option; do # ab with out colons are check flags
    case $option in
        u) user=$OPTARG;; # user flag
        p) pass=$OPTARG;; # password flag
        a) echo "Got the A flag";;
        b) echo "Got the B flag";;
    esac
done

echo "User: $user / Pass: $pass"

while getopts :u:p:ab option; do # a leading colons are check flags that have not be used
    case $option in
        u) user=$OPTARG;; # user flag
        p) pass=$OPTARG;; # password flag
        a) echo "Got the A flag";;
        b) echo "Got the B flag";;
        ?) echo "I do not know what $OPTARG is!";;
    esac
done

echo "User: $user / Pass: $pass"

# this examples requests input from the user

echo "What is your name?"
read name

echo "What is your password?"
read -s pass # -s hides users input

read -p "What is your favorite animal? " animal # -p promts the user

echo  name: $name. pass: $pass, animal: $animal #prints all inputs

select animal in "cat" "dog" "bird" "fish" # number list for user to select from
do
    echo "You selected $animal!" # user promt
    break
done

select option in "cat" "dog" "quit" # number list for user to select from
do
    case $option in # case statemts 
        cat) echo "Cats like to sleep.";;
        dog) echo "Dogs like to play fetch";;
        quit) break;;
        *) echo "I am not sure what that is.";; # catch all
    esac
done


if [ $# -lt 3 ]; then
    cat <<- EOM
    This command requires three arguments:
    username, userid and favorite number.
EOM

else

    # the program goes here
    echo "UserName: $1"
    echo "UserID: $2"
    echo "Favorite Number: $3"
fi

# loop that requires user input using the -z flag to verify the case is not emtpy

read -p "Favorite animal [cat]? " a #asumed anwser in brackets if users presses enter
while [[ -z "$a" ]]; do
    a="cat"
    
done

echo "$a was selected."

# validation using regular expressions

read -p "What is the current year? [nnnn] " a
while [[ ! $a =~ ^[0-9]{4}$ ]]; do # validating a interger 4 digits in length
    read -p "A year, please! [nnnn] " a
done

echo "The current year is: $a"