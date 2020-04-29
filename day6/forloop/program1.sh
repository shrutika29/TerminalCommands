#!/bin/bash
read -p " Enter number:" num
j=2
for (( i=1; i<num; i++ ))
do
			powerOfTwo=$(( $j * 2 ))
			j=powerOfTwo
done
echo "2^$num is equal to $powerOfTwo"
