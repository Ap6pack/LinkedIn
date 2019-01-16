#!/bin/bash
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

# variables for date/time
today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")

# variables for arrays
aa=()
ba=("apple" "banana" "cherry")
ba[5]="kiwi" # place value in a particular position
ba+=("mango") # append the arrays

# variables for declaring an arrays
declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo $a # prints a variable
echo $b # prints a string
echo $c # prints an integer
echo $d # prints the working directory

# Reading a text files

# While loop for reading files
i=1
while read g; do
    echo "Line $i: $g"
    ((i++))
done < file.txt

# Downloads a file via FTP to the current folder

h=$(pftp -n < ftp.txt) # reads and executes script from file

j=$(bash < ftp.sh)

echo "$b! I have $c apples." # prints a string with variables inclued

echo "The ping was $e" # prints a response from a server

echo $f # prints green text in a red field

echo -e $none$green"Green on Red -- "$flash"Merry Christmas!"$none # flashes green text in a red field "works in XTerm"

echo $g # prints file.txt

printf "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time # prints current user and date/time

echo ${ba[2]} # prints cherry
echo ${ba[@]} # prints the complete array
echo ${ba[@]: -1} # prints last element in the array

echo ${myarray["office building"]} is ${myarray[color]} # prints declared array

ls # lists contents of the folder