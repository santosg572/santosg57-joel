#!/bin/bash

dir=`ls santosg57*.zip`

for fil in $dir
do
  echo $fil
  unzip $fil
done


