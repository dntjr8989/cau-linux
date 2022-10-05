#!/bin/sh
i=1
result=0

re='^[+-]?[0-9]+$'

if [ $# != 2 ]
then
	echo "Invalid input"

elif ! [[ $1 =~ $re ]]
then
	echo "Invalid input(Not number)"

elif [ $1 -le 0 ] || [ $2 -le 0 ]
then
	echo "Input must be greater than 0"
else
	while [ $i -le $1 ]
	do
		j=1
		while [ $j -le $2 ]
		do
			result=`expr $i \* $j`
			echo -n "$i * $j = $result    "
			j=`expr $j + 1`
		done
		echo " "
		i=`expr $i + 1`
	done
fi
