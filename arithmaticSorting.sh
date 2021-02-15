#!/bin/bash -x

echo "Enter three value: "

read a b c

op1=$(($a+$b*$c))
echo $op1

op2=$(($a*$b+$c))
echo $op2

op3=`expr $c+$a/$b | bc -l`
echo $op3

op4=$(($a%$b+$c))
echo $op4

delcare -A compute
compute[1]=$op1
compute[2]=$op2
compute[3]=$op3
compute[4]=$op4

echo "Values of each computation: "${compute[@]}

