#!/bin/bash -x
Largest=0
SecLarge=0
Smallest=0
secSmall=0
declare -a array
for (( i=0;i<10;i++ ))
do
 array[$i]=$(( RANDOM%900+100 ))
done
echo "Numbers generated and stored in array are:" ${array[*]}
if [[ ${array[0]} -gt ${array[1]} ]]
then
 Largest=${array[0]}
 secLarge=${array[1]}
else
 Largest=${array[1]}
 secLarge=${array[0]}
fi
for (( i = 2 ; i < ${#array[@]} ; i++ ))
do
 if [[ ${array[$i]} -gt $Largest ]]
 then
 secLarge=$Largest
 Largest=${array[$i]}
 else
 if [[ ${array[$i]} -gt $secLarge ]]
 then
 secLarge=${array[$i]}
 fi
 fi
done
echo "Largest Number is $Largest"
echo "Second Biggest number is $secondLargest"
if [[ ${array[0]} -lt ${array[1]} ]]
then
 Smallest=${array[0]} 
 secSmall=${array[1]}
else
Smallest=${array[1]}
 secSmall=${array[0]}
fi
for (( i = 2 ; i < ${#array[@]} ; i++ ))
do
 if [[ ${array[$i]} -lt $Smallest ]]
 then
 secSmall=$Smallest
 Smallest=${array[$i]}
 else
 if [[ ${array[$i]} -lt $secSmall ]]
 then
 secSmall=${array[$i]}
 fi
 fi
done
echo "Smallest Number is $Smallest"
echo "Second Smallest Number is $secondSmallest"
