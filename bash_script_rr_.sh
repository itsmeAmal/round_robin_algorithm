#!/bin/bash

 file='data_file2.txt'
 
 i=1
 
 while read line; do
 
 echo "Line No. $i: $line" |tee -a write2.txt
 i=$((i+1))
 
 done < $file



