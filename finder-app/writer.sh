#!/bin/sh

writefile=$1
writestr=$2

if [ $# -eq 2 ]
then
    path=$( echo ${writefile%/*} )
    file=$( echo ${writefile##*/} )	
    mkdir -p "$path"

    if [ -d "$path" ]
    then
          echo "$writestr" > "$writefile"    
    else
        echo "No such directory"
        exit 1
    fi
else
    echo "Please Enter at least 2 arguments"
    exit 1
fi
