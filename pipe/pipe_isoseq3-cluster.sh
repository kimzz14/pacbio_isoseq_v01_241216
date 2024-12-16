############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

isoseq3 \
    cluster \
       ${readID}.subreads.ccs.demux.primer_5p--primer_3p.bam \
       ${readID}.subreads.ccs.demux.primer_5p--primer_3p.isoform.bam \
    --num-threads ${threadN} \
    --verbose \
    1> ${readID}.subreads.ccs.demux.primer_5p--primer_3p.isoform.log \
    2> ${readID}.subreads.ccs.demux.primer_5p--primer_3p.isoform.err

#isoseq cluster [options] <flnc.bam|xml> <transcripts.bam|xml>

#ls unpolished*
#unpolished.bam  unpolished.bam.pbi  unpolished.cluster  unpolished.fasta  unpolished.flnc.bam  unpolished.flnc.bam.pbi  unpolished.flnc.consensusreadset.xml  unpolished.transcriptset.xml