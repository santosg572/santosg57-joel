#!/bin/bash

tit=`pdfinfo $1 | grep "Title" | awk '{for(i=1; i<2; i++) $i=""; print $0}'`

aut=`pdfinfo $1 | grep "Author" | awk '{print $2}'`

fech=`pdfinfo $1 | grep "CreationDate" | awk '{print $3$4$6}'`

shopt -s extglob
tit="${tit##*( )}"
tit="${tit%%*( )}"
shopt -u extglob

resultado="${tit// /_}"

file="${resultado}_${aut}_${fech}.pdf"

echo $file

mv $1 $file
