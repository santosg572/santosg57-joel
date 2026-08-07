#!/bin/bash

dd=`ls -1 *.zip`

for fil in $dd
do
  echo $fil
  sshpass -p "carlos21" scp $fil santosg@172.24.220.150:/misc/fmenaj/santosg/Joel_Martinez/.
done


