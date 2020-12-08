#!/bin/bash -x
randomcheck=$((RANDOM%2))
ispresent=1
 
if [ $ispresent  -eq $randomcheck ]
then 
      echo "Employee is present"
else
      echo "Employee is absent"
fi
