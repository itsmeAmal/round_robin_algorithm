#!/bin/bash 
 file='data1.txt'
 arrProcessLabels=()
 arrProcessLabels+=("Time")
 arrayArrivalTime=()

 initialTime=0

 i=0
 echo "----- Data file ------ "
 while read line; do
 echo "$line" |tee -a write-3.txt

 declare -a arrLineValues=()
 arrLineValues+=($line)
 #get first index of each line (as process label)
 arrProcessLabels+=($arrLineValues)

 #get third index of each line (as time)
 arrayBreakLineInto=()
 arrayBreakLineInto+=($line)
 arrayArrivalTime+=(${arrayBreakLineInto[2]})

 #increase i by one value
 i=$((i+1))

 done < $file
 
 echo ""
 echo "---- Time and process labels ----"
 echo ${arrProcessLabels[@]}  

#  echo ${arrayArrivalTime[@]}

 while [ $initialTime -le ${#arrayArrivalTime[@]} ]
 do 
   echo "$initialTime " 
   initialTime=$(($initialTime+1))
 done











 




