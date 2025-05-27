#!/usr/bin/bash

start=$(date +%s)

if [[ $# -ne 1 || ! -d $1 ]]
then
    echo "exit 1"
else
    grep -r "ERROR" "$1" | wc -l  > error_count.txt 2> error.txt 
fi

end=$(date +%s)
time_result=$((end - start))
echo "$time_result"
