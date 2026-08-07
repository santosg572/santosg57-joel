#!/bin/bash

module load singularity/1.2.0  

singularity run --cleanenv \
  --bind /misc/fmenaj/santosg/Joel_Martinez/BIDS:/data \
  --bind /misc/fmenaj/santosg/Joel_Martinez/resultados:/out \
  /misc/fmenaj/santosg/Joel_Martinez/mriqc_latest.sif \
  /data /out participant \
  --participant_label $1

