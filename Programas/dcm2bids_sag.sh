#!/bin/bash

module load dcm2bids/3.2.0

dir=$1
id=$2

#cd $dir

dcm2bids -d $dir -p $id  -c dcm2bids_config_sag.json --auto_extract_entities --skip_dcm2niix

#cd ..


