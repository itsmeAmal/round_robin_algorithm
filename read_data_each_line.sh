#!/bin/bash 

 file='data_file2.txt'
 arrProcessLabels=()
 arrProcessLabels+=("Time")

 i=1
 echo "----- Data file ------ "

 while read line; do
 echo "$line" |tee -a write-3.txt

 declare -a arrLineValues=()
 arrLineValues+=($line)
 
 arrProcessLabels+=($arrLineValues)
 i=$((i+1))

 done < $file
 
 echo ""
 echo "---- Time and process labels ----"
 echo ${arrProcessLabels[@]} 



