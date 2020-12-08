#!/bin/bash -x
randomcheck=$((RANDOM%3))
isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
if [ $isFullTime  -eq $randomcheck ]
then
      numofWorkingHrs=8
elif [ $isPartTime -eq $randomcheck ]
then
      numofWorkingHrs=4
else
      numofWorkingHrs=0
fi
salary=$(( $ratePerHr*$numofWorkingHrs ))
echo " employee wage:" $salary
