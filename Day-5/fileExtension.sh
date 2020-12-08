#!/bin/bash 

for filename in $(ls)
do
     ext=${filename##*\.}
     case "$ext" in
     java)echo "$filename:" java file
     ;;
      sh)echo "$filename:" shellscript file
     ;;
      txt)echo "$filename:" text file
     ;;
      *)echo "$filename:" this file having different extension
     ;;
     esac
done
