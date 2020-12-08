#!/bin/bash -x
randomcheck=$((RANDOM%2))
ispresent=1
 
if [ $ispresent  -eq $randomcheck ]
then 
      ratePerHr=20
      numofWorkingHrs=8
      salary=$(($ratePerHr*$numofWorkingHrs))
fi
echo " employee wage:" $salary
