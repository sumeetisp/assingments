#!/bin/bash
source ./email.properties

validateEmailAddr(){
        if [[ $1 =~ $regex ]] ; then
          echo "$1 is valid email address."
        else
          echo "$1 is not is not a valid email address."
        fi
}


while read line; do
# reading each line
validateEmailAddr $line
done < $filename
