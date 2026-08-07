#!/bin/bash

module load dcm2niix/1.0.20 

#dcm2niix -b y -ba y -z y -f %3s_%f_%p_%t -o ./helper $1/

file="file_"$1

mkdir $file

dcm2niix -b y -ba y -z y -f %3s_%f_%p_%d_%g_%s -o ./$file $1/
