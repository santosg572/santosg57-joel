../../dcm2bids_todos.sh
=======================

.. code:: Bash

   #!/bin/bash

   dir="file_200
   file_201
   file_202
   file_203
   file_204
   file_205
   file_206
   file_207
   file_208
   file_209
   file_210
   file_211
   file_212
   file_213
   file_214
   file_215
   file_217
   file_218
   file_219
   file_296
   file_297
   file_299
   file_301
   file_305
   file_309
   file_310
   file_780
   file_781
   file_790
   file_792
   file_793
   file_809
   file_810
   file_86153
   file_86158
   file_86224
   file_86225
   file_86380
   file_86381
   file_86382
   file_86454
   file_86911
   file_86913
   file_86914
   file_86915
   file_86916
   file_904
   file_905
   file_906
   file_907
   file_908
   file_911
   file_912
   file_974
   file_975"

   k=1
   diez=10

   for fil in $dir
   do
     echo $fil
     if [[ $k -lt $diez ]]
     then 
       dd="0"$k
     else
       dd=$k
     fi
     #  echo $dd
     k=$(( k+1 )) 
     echo "./dcm2bids.sh $fil $dd"
     ./dcm2bids.sh $fil $dd
   done

 
