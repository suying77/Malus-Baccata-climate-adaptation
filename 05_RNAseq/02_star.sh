#path="/public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq"
#th=5
#!/bin/bash
for i in $(cat /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_down/salt/PRJNA1047940);do echo "#!/bin/bash
#SBATCH --job-name=${i}
#SBATCH --partition=debug,normal
#SBATCH --nodes=1                  
#SBATCH --ntasks-per-node=5
#SBATCH --error=%j.err
#SBATCH --output=%j.out
source /public/home/suying1/anaconda3/bin/activate star
#mkdir bam${i}
STAR --runThreadN 5 \
--readFilesIn /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_down/salt/clean/${i}_1.clean.fastq.gz /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_down/salt/clean/${i}_2.clean.fastq.gz \
--genomeDir /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_index \
--outFileNamePrefix ${i} \
--outSAMmultNmax 1 \
--outSAMtype BAM SortedByCoordinate \
--quantMode TranscriptomeSAM \
--twopassMode Basic \
--sjdbOverhang 149 \
--readFilesCommand gunzip -c \
--sjdbGTFfile /public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_index/Final_hap1.gtf " > ${i}.sh
dos2unix  ${i}.sh
sbatch  ${i}.sh
done
