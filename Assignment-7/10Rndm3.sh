#!/bin/bash
clear
i=0
n=10
declare -a input
for (( i=0; i<n; i++ ))
do
input[$i]=$(( 100 + RANDOM % 900 ))
done

echo ${input[@]}

largest=${input[0]}
secondLarge=${input[0]}

for (( i=0; i<10; i++ ))
do
if [[ ${input[$i]} -ge $largest ]]
then
secondLarge=$largest
largest=${input[$i]}
elif [[ ${input[$i]} -gt $secondLarge && ${input[$i]} -ne $largest ]]
then
secondLarge=${input[$i]}
fi
done

echo "$secondLarge is Second Large in array"

smallest=${input[0]}
secondSmall=${input[0]}

for (( j=0; j<10; j++ ))
do
if [[ ${input[$j]} -le $smallest ]]
then
secondSmall=$smallest
smallest=${input[$j]}
elif [[ ${input[$j]} -lt $secondSmall && ${input[$j]} -ne $smallest ]]
then
secondSmall=${input[$j]}
fi
done

echo "$secondSmall is Second small in array"

sleep
