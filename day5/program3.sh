#!/bin/bash
D1=$(( $RANDOM%6 + 1));
D2=$(( $RANDOM%6 + 1));
echo $D1 $D2;
result=$(( $D1 + $D2 ));
echo $result;
