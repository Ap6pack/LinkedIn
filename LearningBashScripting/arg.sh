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