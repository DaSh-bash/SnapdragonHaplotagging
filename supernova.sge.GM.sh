#!/bin/bash

#$ -pe parallel 40
#$ -l h_vmem=15G
#$ -N supernova
#$ -o ./
#$ -j y
#$ -S /bin/bash
#$ -cwd

if [ ! -e "/tmp/mkucka" ];then mkdir /tmp/mkucka;fi

/fml/chones/local/supernova-2.1.1/supernova run \
	--id=Super_GM \
	--sample=All_Run202_L8 \
	--fastqs=/fml/chones/data/Marek/Run202_L8_newGM_Mg_decoys/00_Run202_L8_bcl2fastq/Fastq-corrected-sample-split-cutadapt/ \
	--maxreads='all' \
	--accept-extreme-coverage
