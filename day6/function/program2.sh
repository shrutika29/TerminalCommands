#!/bin/bash
function palindrome(){
local $n-$1
r=0
while [ $n!=0 ]
			do
						r=$r*10
						r=$(($r+$n%10))
						r=$(($n/10))
			done
echo $r
}

read -p "Enter Number" n;
a=$n
reverse="$(palindrome $n)"
if [ $reverse -eq $a ]
	then
			echo "Palindrome number"
	else
			echo "Not Palindrome number"
fi

