#! /bin/bash -x
money=100;
bets=0;
wins=0;

while (( money>0 && money<200))
do
         betResult=$(( RANDOM%2))
         if [ $betResult -eq 1 ]
         then
                     ((money++))
                     ((wins++))
         else
                     ((money--))
         fi
         ((bets++))
done
echo "Money=$money bets=$bets wins=$wins"
