#!/bin/bash

echo $SLURM_TMPDIR
echo $HOSTNAME
echo $(date)

. /etc/profile

module load python/3.8
module load cuda/10.1/cudnn/7.6

EXP="$SLURM_TMPDIR/experiment"
mkdir $EXP

rsync -r . $EXP

cd $EXP

bash ./env.sh

source env/bin/activate

echo $@
python -u $@

