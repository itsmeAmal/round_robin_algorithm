#!/bin/bash
echo "enter nu of process"
read n
echo "enter quantum time"
read qt
echo "enter the burst time for each process"

for i in $(seq 1 1 $n)
do 
    echo -n Process $i : burst time :
    read bt[i]
    rbt[i]=${bt[i]}
done




p=$n
pt=0

while [[ $p>0 ]]
do 
  for i in $(seq 1 1 $n)
  do 
    if [[ ${rbt[i]} -gt 0 ]]
	  then
      if [[ ${rbt[i]} -le $qt ]]
	      then
            pt=$((pt+rbt[i]))
            rbt[i]=0
            tat[i]=$pt
            wt[i]=$((pt-bt[i]))
            p=$((p-1))
	      else
	          rbt[i]=$((rbt[i]-qt))
	          pt=$((pt+qt))
	    fi
    fi
  done
done

echo "level-end-1"
  
for i in $(seq 1 1 $n)
do
    echo process $i : waiting time ${wt[i]} turnaround time ${tat[i]}
done 





















