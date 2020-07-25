#!/bin/bash
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
