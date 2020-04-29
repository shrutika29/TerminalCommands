#!/bin/bash

read -p "Enter prime  factorial Number: " num

for (( j=2; $num%j==0;))
do
			echo "2"
			num=$(( $num/$j ))
done
for (( i=1; i*i<=$num; i++))
do
			for (( val=j; $num%val==0; ))
			do
						echo $val
						num=$(( $num/$val))
			done
done
if [ $num -gt 2 ]
then
			echo "$num"
fi
