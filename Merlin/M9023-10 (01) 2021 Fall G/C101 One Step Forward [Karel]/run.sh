#!/bin/bash
makePath=$(upfind -name 'make.sh' -executable 2> /dev/null | head -n 1)
if [[ -f $makePath ]]; then
    makeCommandLine="'$makePath' --mode=run $@"
    eval $makeCommandLine
else
    echo "make.sh was not found from here"
    exit 1
fi
