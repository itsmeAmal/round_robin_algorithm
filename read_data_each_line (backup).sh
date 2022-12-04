#!/bin/bash

 file='data_file2.txt'
 
 i=0
 
 while read line; do
 
 echo "Line No. $i: $line" |tee -a write-3.txt
 i=$((i+1))

 echo "###########START#####"
 array = ( $line )
 for i in "${array[@]}"
 do
    echo "$i"
    done
 echo "###########END#####"


 done < $file

 echo "Process count: $i"
 echo "Process label 1 "



