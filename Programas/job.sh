#!/bin/bash
#PBS -N my_test_job
#$ -cwd
#PBS -l nodes=1:ppn=4
#PBS -l walltime=01:00:00

id="06"
diez=10
k=1

for k in `seq 55`
do
 if [ $k -lt $diez ]; then
    id="0"$k
 else
    id=$k
 fi
 echo $id
 qsub ./sin_mriqc.sh $id
done







