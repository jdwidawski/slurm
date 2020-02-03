#!/bin/bash
#SBATCH --job-name=kuba_exc2
#SBATCH --partition=research.q
#SBATCH --array=0-4
#SBATCH --output=kuba_array.out
echo $(sort names_$SLURM_ARRAY_TASK_ID.txt) > names_$SLURM_ARRAY_TASK_ID.txt   