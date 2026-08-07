#!/bin/bash

module load dcm2bids/3.2.0
module load dcm2niix/1.0.20 


file="file_"$1

mkdir $file
cd $file

dcm2bids_scaffold 

cp -r ../$1 sourcedata/.

ls  sourcedata/$1

dcm2bids_helper -d sourcedata/

