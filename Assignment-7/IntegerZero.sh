#!/bin/bash 
declare -a array
array=(0 -1 2 -3 1)
echo "All array elements" ${array[@]}
for (( i=0; i<5; i++ ))
do
 for(( j=i+1; j<5; j++ ))
  do
 for(( k=j+1; k<5; k++ ))
  do
 if [ $(($((array[i]))+$((array[j]))+$((array[k])))) -eq 0 ]
  then
   echo "${array[i]} ${array[j]} ${array[k]}"
 fi
done
done
done
