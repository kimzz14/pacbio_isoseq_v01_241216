############################################################################################
readID=$1
threadN=$2
############################################################################################
sh pipe/pipe_ccs.sh             ${readID} ${threadN}
sh pipe/pipe_lima.sh            ${readID}.subreads.ccs ${threadN}
sh pipe/pipe_isoseq3-cluster.sh ${readID}.subreads.ccs.demux.primer_5p--primer_3p ${threadN}

echo ${readID} done!