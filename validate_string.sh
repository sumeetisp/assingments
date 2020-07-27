#!/bin/bash

#The regex matches email address that starts with Charachter or Number followed by any number of characters, numbers and some special characters. 
#This can be followed by zero or one "." and again followed by any number of characters, numbers and special characters.
#Regex will check for @ followed by any chars and numbers. These can then be followed by "." and again any number of chars and numbers.


source ./email.properties

validateEmailAddr(){
        if [[ $1 =~ $regex ]] ; then
          echo "$2) $1 is valid email address."
        else
          echo "$2) $1" >> $output_file
        fi
}

n=0
[ -e $output_file ] && rm $output_file
while read line; do
n=$((n+1))
# reading each line
validateEmailAddr "$line" $n
done < $filename
