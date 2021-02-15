#!/bin/bash -x

echo "Enter three value: "

read a b c

op1=$(($a+$b*$c))
echo $op1

op2=$(($a*$b+$c))
echo $op2

op3=$(($c+$a/$b))
echo $op3

op4=$(($a%$b+$c))
echo $op4

delcare -A compute
compute[1]=$op1
compute[2]=$op2
compute[3]=$op3
compute[4]=$op4

echo "Values of each computation: "${compute[@]}

arr[((0))]="${compute[1]}"
arr[((1))]="${compute[2]}"
arr[((2))]="${compute[3]}"
arr[((3))]="${compute[4]}"

echo "Values in array: "${arr[*]}

len=${#arr[*]}
for ((i=0;i<$len;i++))
do
	for ((j=$(($i+1));j<$len;j++))
	do
		if [ ${arr[i]} -lt ${arr[j]} ]
			then
				temp=${arr[i]}
				arr[((i))]=${arr[j]}
				arr[((j))]=$temp
		fi
	done
done

echo "Descending Order: "${arr[*]}
