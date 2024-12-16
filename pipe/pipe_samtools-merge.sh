############################################################################################
readID=$1
threadN=$2

readDir=archive/kimzz14/SRA_RAW/NAAS/Triticum_aestivum/Keumgang/Iso-Seq/data
############################################################################################

samtools merge \
    -o Keumgang.IsoSeq.N02.subreads.ccs.bam \
    ${readDir}/Keumgang.IsoSeq.01C.subreads.ccs.bam \
    ${readDir}/Keumgang.IsoSeq.02C.subreads.ccs.bam \
    1> Keumgang.IsoSeq.N02.subreads.ccs.bam.log \
    1> Keumgang.IsoSeq.N02.subreads.ccs.bam.err
