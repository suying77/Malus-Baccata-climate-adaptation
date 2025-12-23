#!/bin/bash
#SBATCH --job-name=PRJNA1047940
#SBATCH --partition=debug,normal
#SBATCH --nodes=1                  
#SBATCH --ntasks-per-node=40
#SBATCH --error=%j.err
#SBATCH --output=%j.out
source /public/home/suying1/anaconda3/bin/activate star
cd /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/02_star/PRJNA1047940/0sortbam
/public/home/suying1/biosoft/bin/subread/bin/featureCounts -a /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_index/Final_hap1.gtf -T 40 -g gene_id -t exon -p -o featurecounts.tsv *.bam
