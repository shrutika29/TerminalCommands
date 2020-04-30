#!/bin/bash

count=0
b=0
for i in {1..10}
do
			num=${RANDOM:0:3}
			arr[((count++))]=$num
done
echo "${arr[@]}"
IFS=$'\n' sorted=($(sort <<< "${arr[*]}")); unset IFS
echo "$sorted[@]"
echo "second minNum is ${sorted[1]}"
echo "second maxNum is ${sorted[8]}"
