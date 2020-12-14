#!/bin/bash -x

isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
       $isFullTime)
       echo "FullTime employee"
       empHrs=8
       ;;

       $isPartTime)
       echo "PartTime employee"
       empHrs=4
       ;;

       *)
       echo "employee is absent"
       empHrs=0
       ;;
esac
salary=$(( $ratePerHr*$empHrs ))
echo "Employee wage:" $salary

