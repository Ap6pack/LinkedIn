#!/bin/bash

a=5 # interger for comparison

# if statement

if [ $a -gt 4 ]; then # if interger is greater than 4 
    echo $a is greater then 4! # then echo 
else
    echo $a is not greater than 4! # eles echo
fi

# if statement

b="This is my string!" # string for comparison "add or remove an interger to test"

if [[ $b =~ [0-9]+ ]]; then # if the string has an interger in it
    echo "There are numbers in the string: $b" # then echo
else
    echo "There are no numbers in the string: $b" # eles echo
fi

# while loop

i=0
# loop thought while count is <= 10

while [ $i -le 10 ]; do
    echo i:$i # echo count
    ((i+=1))
done

# until loop

j=0
# loop thought until count is >= 10

until [$j -ge 10 ]; do
    echo j:$j # echo count
    ((j+=1))
done

# for loop

for i in 1 2 3 #loop thought count
do
    echo $i # echo count
done

# for loop

for i in {1..100} #loop thought count 1-100
do
    echo $i # echo count
done

# for loop

for i in {1..100..2} #loop thought count 1-100 by 2s
do
    echo $i # echo count
done

#for loop

for (( i=1; i<=10; i++ )) # loop thought while count is <= 10
do
    echo $i # echo count
done

# for loop array

arr=("apple" "banana" "cherry")
for i in {$arr[@]} #loop thought array
do
    echo $i # echo array
done

# for loop decalare array

declare -A arr
arr=["name"]="Adam"
arr=["id"]="1234"
for i in ${!arr[@]} #loop thought array
do
    echo "$i: ${!arr[@]}" # echo array
done

# for loop list folder contents

for i in $(ls)
do
    echo #i # echo contents
done

# case loop

a="cat" # change to test the loop
case $a in
    cat) echo "Fline";; # testing for cat
    dog|puppy) echo "Canine";; # testing for dog | is to specify a list of things to match
    *) echo "No natch!";; # all other variables
esac

# function loop

function greet {
    echo"Hello, $1 What a nice $2!"
}
echo "And now, greeting!"
greet Adam Morning # argument 1
greet Everybody Evening # argument 2

# function loop
numbering pine birch maple spruce # items
function numbering { # assigns a number to items
    i=1
    for f in $@; do
        echo $i: $f
        ((i+=1))
    done
}

numbering ($ls) # lists folder contents