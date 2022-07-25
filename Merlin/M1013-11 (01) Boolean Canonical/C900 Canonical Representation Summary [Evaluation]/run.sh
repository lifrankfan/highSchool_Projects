#!/bin/bash

file="answers.txt"
if [ -f "$file" ]
then
    cat "$file"
    exit 0
else
    >&2 echo "Required file '$file' is missing."
    exit 1
fi


