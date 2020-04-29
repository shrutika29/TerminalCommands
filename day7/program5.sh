#!/bin/bash -x
read -p "Enter starting point of range between 0 and 100 :" rangeStart
if [[ $rangeStart -lt 0 || $rangeStart -gt 100 ]] 
then
			echo "Invalid Input"
else
			read -p "Enter The ending point of range between 0 and 100 :" rangeEnd
			if [[ $rangeEnd -lt 0 || $rangeEnd -gt 100 || $rangeEnd -le $rangeStart ]]
			then
							echo "Invalid Input"
			else
							count=0;
							for(( element=rangeStart;element<=rangeEnd;element++ ))
							do
										if [[ $element -ne 0 && $((element%1)) -eq 0 ]]
										then
										array[((count++))]=$element
										fi
							done
							if [ $count -eq 0 ]
							then
									echo "No such number in the range"
							else
									echo ${array[@]}
							fi
			fi
fi
