# index
ln -s /public/home/suying1/data/Mba/Mba01_data/02_genome/annotation/final_gff/Ea_merge/hap1/Final_hap1.gff3
gffread Final_hap1.gff3 -T -o Final_hap1.gtf
path="/public/home/suying1/data/Mba/02_population/revise1208/01_RNAseq/01_index"
ref="ref.fa"
gtf="Final_hap1.gtf"
th=20
#ln -s $ref && ln -s $gtf    # 注意是gtf，没有的话可以用gffread A.gff -T -o A.gtf
STAR --runThreadN $th \
--runMode genomeGenerate \
--genomeDir ${path} \
--genomeFastaFiles ${path}/${ref} \
--sjdbGTFfile ${path}/${gtf} \
--sjdbOverhang 149 \
--genomeSAindexNbases 13


