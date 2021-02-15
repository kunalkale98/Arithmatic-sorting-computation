#!/bin/bash -x

echo "Enter three value: "

read a b c

op1=$(($a+$b*$c))

echo $op1
