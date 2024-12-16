############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

isoseq3 \
    cluster \
       ${readID}.bam \
       ${readID}.isoform.bam \
    --num-threads ${threadN} \
    --verbose \
    1> ${readID}.isoform.log \
    2> ${readID}.isoform.err

#isoseq cluster [options] <flnc.bam|xml> <transcripts.bam|xml>

#ls unpolished*
#unpolished.bam  unpolished.bam.pbi  unpolished.cluster  unpolished.fasta  unpolished.flnc.bam  unpolished.flnc.bam.pbi  unpolished.flnc.consensusreadset.xml  unpolished.transcriptset.xml