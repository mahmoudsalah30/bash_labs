#!/usr/bin/env bash

out=$(ls -ltra | wc -l)

function eval {
if [[ $answer -lt $out ]]
then
        echo "too low"
        getdata
elif  [[ $answer -gt $out ]]
then     echo "too high"
        getdata
else
        echo "congratulatlation correct"
fi
}
function getdata {
        echo "how many files are in the current directory"
        read answer
        while ! [[ $answer =~ ^[0-9]+$ ]]; do
        echo "Invalid input. Please enter a valid nu"
        read answer
        done
        echo $answer
        eval
}
getdata
