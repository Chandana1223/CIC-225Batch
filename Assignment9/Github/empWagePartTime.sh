#!/bin/bash -x

isFullTime=2
isPartTime=1
salary=0
ratePerHr=20
randomCheck=$((RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then
      numofWorkHrs=14
elif [ $isPartTime -eq $randomCheck ]
then
      numofWorkHrs=8
else
      numofWorkHrs=0
fi
salary=$(( $ratePerHr*$numofWorkHrs ))
echo "employee wage:" $salary

