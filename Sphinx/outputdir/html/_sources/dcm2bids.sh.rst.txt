dcm2bids.sh.rst
===============

.. code:: Bash

   #!/bin/bash

   module load dcm2bids/3.2.0

   dir=$1
   id=$2

   #cd $dir

   dcm2bids -d $dir -p $id  -c dcm2bids_config.json --auto_extract_entities --skip_dcm2niix

   #cd ..


