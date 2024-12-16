############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

skera split \
       ${readID}.bam \
       mas16_primers.fasta \
       ${readID}.skera.bam 
    1> ${readID}.skera.bam.log \
    2> ${readID}.skera.bam.err

#https://skera.how/
#https://skera.how/adapters
#https://downloads.pacbcloud.com/public/dataset/MAS-Seq/REF-MAS_adapters/MAS-Seq_Adapter_v1/mas16_primers.fasta