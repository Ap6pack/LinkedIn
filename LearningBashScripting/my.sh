#!/bin/bash
# This is a basic script

a=Hello # a veriable
b="Good Morning" # a string
c=16 # a interiger
d=$(pwd) # the working directory
e=$(ping -c 1 example.com | grep "bytes from" | cut -d = -f 4) # determines how long a ping request takes to get a response from a server

echo $a # prints a veriable
echo $b # prints a string
echo $c # prints an interiger
echo $d # prints the working directory

echo "$b! I have $c apples." # prints a string with variables inclued

echo "The ping was $e" # prints a response from a server