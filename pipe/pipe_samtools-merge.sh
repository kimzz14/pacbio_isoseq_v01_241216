############################################################################################
readID=$1
threadN=$2

readDir=/archive/kimzz14/SRA_RAW/NAAS/Triticum_aestivum/Keumkang/Iso-Seq/data
############################################################################################

samtools merge \
    -o Keumkang.IsoSeq.N02.subreads.ccs.bam \
    ${readDir}/Keumkang.IsoSeq.01C.subreads.ccs.bam \
    ${readDir}/Keumkang.IsoSeq.02C.subreads.ccs.bam \
    1> Keumkang.IsoSeq.N02.subreads.ccs.bam.log \
    1> Keumkang.IsoSeq.N02.subreads.ccs.bam.err
