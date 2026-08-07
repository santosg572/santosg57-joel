#!/bin/bash

pal1="RestState_FINAL"
pal2="RestState_ENTRE"
pal3="ImagPsicolRest"
pal4="FSPGR_3D"
pal5="FSPGR_BRAVO"
pal6="Video"
pal7="PREvideo"
pal8="Ax_T2"

ls -1R file* > lista_archivos.txt
sort lista_archivos.txt > lista_archivos_sort.txt

grep    $pal1 lista_archivos_sort.txt > "arch_"$pal1
grep -v $pal1 lista_archivos_sort.txt > "AAA_2".txt

grep    $pal2 "AAA_2".txt > "arch_"$pal2
grep -v $pal2 "AAA_2".txt > "AAA_3".txt

grep    $pal3 "AAA_3".txt > "arch_"$pal3
grep -v $pal3 "AAA_3".txt > "AAA_4".txt

grep    $pal4 "AAA_4".txt > "arch_"$pal4
grep -v $pal4 "AAA_4".txt > "AAA_5".txt

grep    $pal5 "AAA_5".txt > "arch_"$pal5
grep -v $pal5 "AAA_5".txt > "AAA_6".txt

grep    $pal6 "AAA_6".txt > "arch_"$pal6
grep -v $pal6 "AAA_6".txt > "AAA_7".txt

grep    $pal7 "AAA_7".txt > "arch_"$pal7
grep -v $pal7 "AAA_7".txt > "AAA_8".txt

grep    $pal8 "AAA_8".txt > "arch_"$pal8
grep -v $pal8 "AAA_8".txt > "AAA_9".txt
