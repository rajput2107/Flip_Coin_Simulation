#! /bin/bash

headCount=0
tailCount=0

while [ $headCount -lt 10 ] && [ $tailCount -lt 10 ]
do
	toss=$(( RANDOM%2 ))
	if [ $toss -eq 0 ]
	then
		headCount=$(( $headCount+1 ))
	else
		(( tailCount++ ))
	fi
done
echo $headCount $tailCount
