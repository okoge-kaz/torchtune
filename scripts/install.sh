#!/bin/sh
#$ -cwd
#$ -l node_f=1
#$ -l h_rt=3:00:00
#$ -o outputs/install/$JOB_ID.log
#$ -e outputs/install/$JOB_ID.log
#$ -p -5

# Load modules
module use /gs/fs/tga-NII-LLM/modules/modulefiles

module load ylab/cuda/12.1
module load ylab/cudnn/8.9.7
module load ylab/nccl/cuda-12.2/2.20.5
module load ylab/hpcx/2.17.1
module load ninja/1.11.1

# swich virtual env
source .env/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

pip install torchtune
