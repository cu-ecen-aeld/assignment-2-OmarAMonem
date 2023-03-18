#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -eq 2 ]
then
    if [ -d "$filesdir" ]
    then
        files_no=`grep -rol "${searchstr}" "$filesdir" | wc -l`
        match_no=`grep -ro "${searchstr}" "$filesdir" | wc -l`
        echo The number of files are "$files_no" and the number of matching lines are "$match_no"
            
    else
        echo "No such directory"
        exit 1
    fi
else
    echo "Please Enter at least 2 arguments"
    exit 1
fi
