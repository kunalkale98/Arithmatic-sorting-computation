#!/bin/bash -x

echo "Enter three value: "

read a b c

op1=$(($a+$b*$c))
echo $op1

op2=$(($a*$b+$c))
echo $op2

op3=`expr $c+$a/$b | bc -l`
echo $op3
