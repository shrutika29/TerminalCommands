#!/bin/bash

read -p "Enter number of integers you want to enter (minimum 3) :" integerCount
$integerCount
	echo "invalid input"

	tripletCount=0
	for (( count=1; count<=integerCount; count++ ))
	do
		read -p "Enter element number $count :" integer[$((count-1))]
	done
	for (( i=0;i<(integerCount-2);i++))
	do
		for (( j=i+1;j<(integerCount-1);j++ ))
		do
			for (( k=j+1;k<(integerCount);k++))
			do
				if [ $(( integer[$i] + integer[$j] + integer[$k] )) -eq 0 ]
				then
					((tripletCount++))
					echo ${integer[$i]} ${integer[$j]} ${integer[$k]}
				fi
			done
		done
	done
	if [ $tripletCount -eq 0 ]
	then
		echo "no such Triplet"
	fi
fi
	done

