#!/bin/sh
i=1
result=0
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


