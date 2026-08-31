mriqc01.sh
==========

.. code:: Bash

   #!/bin/bash

   module load ANTs/2.4.4
   module load freesurfer/7.4.1
   module load afni/24.1.02

   mriqc BIDS/ output-folder/ --mem 16G participant --participant-label 01

