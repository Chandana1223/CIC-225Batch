#!/bin/bash -x

for (( counter=1;counter<=4;counter++ ))
do
     echo "counter value:" $counter
     for (( index=1;index<=4;index++ ))
     do
     echo "index value:" $index
     done
done
