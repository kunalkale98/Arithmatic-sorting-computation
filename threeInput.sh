#!/bin/bash -x

echo "Three values: "

read a b c

op1=$(($a+$b*$c))

echo $op1
