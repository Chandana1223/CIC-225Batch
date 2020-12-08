#!/bin/bash
declare -a array
n=100
for (( i=0; i<=n; i++ ))
do
    k=$(($i/10))
    L=`echo $i | awk '{print $1%10}'`
  if [ $k -eq $L ]
then
    result[i]=$i
  fi
done
echo ${result[@]}
