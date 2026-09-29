#!/bin/bash

pdfinfo $1".pdf"
echo "---------------------------------------"

pdfinfo $1".pdf" | grep "Title"

tit=`pdfinfo $1".pdf" | grep "Title" | awk '{for(i=1; i<2; i++) $i=""; print $0}'`

pdfinfo $1".pdf" | grep "Author"

aut=`pdfinfo $1".pdf" | grep "Author" | awk '{print $2}'`

pdfinfo $1".pdf" | grep "CreationDate"

pdfinfo $1".pdf" | grep "CreationDate" | awk '{print $4,$3,$5, $6}'

fech=`pdfinfo $1".pdf" | grep "CreationDate" | awk '{print $3$4$6}'`

shopt -s extglob
# Quitar espacios al inicio y al final
tit="${tit##*( )}"
tit="${tit%%*( )}"
shopt -u extglob

echo $tit
resultado="${tit// /_}"

echo "-------------------------------------"
echo $resultado
echo $aut
echo $fech
echo "-------------------------------------"

file=$resultado"_"$aut"_"$fech".pdf"

echo $file



