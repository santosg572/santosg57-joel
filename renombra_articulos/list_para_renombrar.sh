#!/bin/bash

lista=$(ls -1 *.pdf)

for ss in $lista
do 
  echo $ss
  ./renombra_archivos.sh $ss
done

