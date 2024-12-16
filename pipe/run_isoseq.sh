############################################################################################
readID=$1
threadN=$2
############################################################################################
sh pipe/pipe_ccs.sh             ${readID} ${threadN}
sh pipe/pipe_lima.sh            ${readID} ${threadN}
sh pipe/pipe_isoseq3-cluster.sh ${readID} ${threadN}

echo ${readID} done!