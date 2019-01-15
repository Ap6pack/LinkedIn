#!bin/bash
# This is a basic script

a=Hello # a variable
b="Good Morning" # a string
c=16 # a integer
d=$(pwd) # the working directory
e=$(ping -c 1 example.com | grep "bytes from" | cut -d = -f 4) # determines how long a ping request takes to get a response from a server
f=$(echo -e "\033[32;41mGreen on Red -- \033[0m\033[32;41mMerry Christmas\033[0m") # green text in a red field

# variables for flashing text
flash=$(tput setab 1; tput setaf 2; tput blink)
green=$(tput setab 1; tput setaf 2)
none=$(tput sgr0)

echo $a # prints a variable
echo $b # prints a string
echo $c # prints an integer
echo $d # prints the working directory

echo "$b! I have $c apples." # prints a string with variables inclued

echo "The ping was $e" # prints a response from a server
echo $f # prints green text in a red field

echo -e $none$green"Green on Red -- "$flash"Merry Christmas!"$none # flashes green text in a red field "works in XTerm"