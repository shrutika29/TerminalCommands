#!/bin/bash

read -p "Enter number whose prime factor are to be find:" inputNumber
count=0
declare -a primeFactor
for (( div=2; inputNumber%div==0; ))
do
	primeFactor[((count++))]=$div
	inputNumber=$(( $inputNumber/$div ))
done

for (( div=3; div*div<=inputNumber; div++ ))
do
	for (( testVar=div; inputNumber%testVar==0; ))
	do
		primeFactor[((count++))]=$div
		inputNumber=$(( $inputNumber/$testVar ))
	done
	((div++))
done

if [ $inputNumber -gt 2 ]
then
	primeFactor[((count++))]=$inputNumber

fi

echo ${primeFactor[@]}
