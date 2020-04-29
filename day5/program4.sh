#!/bin/bash
D1=$(( $RANDOM % 100 ));
D2=$(( $RANDOM % 100 ));
D3=$(( $RANDOM % 100 ));
D4=$(( $RANDOM % 100 ));
D5=$(( $RANDOM % 100 ));
echo $D1 $D2 $D3 $D4 $D5;
sum=$(( $D1 + $D2 + $D3 + $D4 + $D5 ));
echo  sum $sum;
Average=$(( $sum/5 ));
echo Average $Average;
