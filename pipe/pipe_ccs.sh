############################################################################################
readID=$1
threadN=$2

readDir=/test
############################################################################################

ccs \
    ${readID}.subreads.bam \
    ${readID}.subreads.ccs.bam \
    --numThreads ${threadN} \
    --noPolish \
    --minPasses 1 \
    --reportFile ${readID}.subreads.ccs.report \
    1> ${readID}.subreads.ccs.bam.log \
    2> ${readID}.subreads.ccs.bam.err

#--noPolish                Only output the initial template derived from the POA (faster, less accurate).
#--minPasses               Minimum number of subreads required to generate CCS. [3]

#ccs input.subread.bam output.ccs.bam --min-rq 0.99 --num-threads 8
#ccs --report-file ccs_report.txt input.subread.bam output.ccs.bam
#seqkit stats output.fastq
#--reportFile              Where to write the results report. ["ccs_report.txt"]