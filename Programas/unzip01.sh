#!/bin/bash

dir=$(ls -1 santosg*)

for dd in  $dir
do
  echo $dd
  unzip $dd
done

