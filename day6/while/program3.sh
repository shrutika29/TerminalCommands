
#!/bin/bash -x
head=0
tail=1
a=0
b=0

for (( i=1; i>0; i++ ))
do
			coin=$((RANDOM%2))
			if [ $coin -eq 0 ]
			then
								a=$(( $a + 1 ))
								if [ $a -eq 11 ]
								then
											echo "Heads is win 11 times"
								fi
			fi
			if [ $coin -eq 1 ]
			then
		b=$(( $b + 1 ))
						if [ $b -eq 11 ]
						then
										echo "Tails is win 11 times"
										exit
						fi
			fi
done
