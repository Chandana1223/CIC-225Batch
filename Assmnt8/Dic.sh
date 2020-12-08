#!/bin/bash 
declare -A frequency

range=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

while [ 1 ]
do
	diceValue=$(( RANDOM % 6 + 1 ))
	range[$diceValue]=$(( ${range[$diceValue]} + 1 ))
	if [ ${range[$diceValue]} -eq 10 ]
	then
		maxRange=$diceValue
		break
	fi
done

minRange=${range[1]}

for rng in "${range[@]}"
do
	if [ $rng -lt $minRange ]
	then
		minRange=$rng
	fi
done

echo "Dice Values ${!range[@]}"
echo "ranges ${range[@]}"
echo "Most occured dice value is $maxRange"
echo -n "Minimum occuring elements are "

for value in "${!range[@]}"
do
	if [ ${range[$value]} -eq $minRange ]
	then
		echo  "$value"
	fi
done
