############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

lima \
    ${readID}.bam \
    primers.fasta \
    ${readID}.demux.bam \
    --num-threads ${threadN} \
    --isoseq \
    --dump-clips \
    1> ${readID}.demux.log \
    2> ${readID}.demux.err

#--no-pbi \
#--isoseq                              Activate specialized IsoSeq mode.
#
# --dump-clips                          Dump clipped regions in a separate output file <prefix>.lima.clips


#
#ls demux*
#demux.json  demux.lima.counts  demux.lima.report  demux.lima.summary  demux.primer_5p--primer_3p.bam  demux.primer_5p--primer_3p.subreadset.xml


#lima --isoseq -j 20 3d-F1-ccs.bam primers.fasta 3d-F1-lima.bam