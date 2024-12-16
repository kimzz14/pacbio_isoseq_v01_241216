############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

skera split \
       ${readID}.subreads.ccs.bam \
       mas16_primers.fasta \
       ${readID}.subreads.ccs.skera.bam 
    1> ${readID}.subreads.ccs.skera.bam.log \
    2> ${readID}.subreads.ccs.skera.bam.err

#https://skera.how/
#https://skera.how/adapters
#https://downloads.pacbcloud.com/public/dataset/MAS-Seq/REF-MAS_adapters/MAS-Seq_Adapter_v1/mas16_primers.fasta