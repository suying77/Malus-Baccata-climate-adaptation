#for i in PRJNA1089347 PRJNA756786 PRJNA891220 PRJNA892233 PRJNA977804
for i in PRJNA1047940 PRJNA908220
do echo "#!/bin/bash
#SBATCH --job-name=${i}
#SBATCH --partition=debug,normal
#SBATCH --nodes=1                  
#SBATCH --ntasks-per-node=40
#SBATCH --error=%j.err
#SBATCH --output=%j.out
source /public/home/suying1/anaconda3/bin/activate star
cd /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/02_star/${i}/0sortbam
~/featureCounts -a 01_index/Final_hap1.gtf -T 40 -g gene_id -t exon -p -o featurecounts.tsv *.bam" > ${i}.counts.sh
#awk -F '\t' '{printf "%s\t%s",$1,$6;for(i=7;i<=NF;i++)printf "\t%s",$i;print ""}' featurecounts.tsv > counts.tsv 
dos2unix ${i}.counts.sh
sbatch ${i}.counts.sh
done