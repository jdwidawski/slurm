#!/bin/bash
#SBATCH --job-name=kuba
#SBATCH --partition=research.q
#SBATCH --nodes=1
#SBATCH --output=kuba_slurm_out

# write string to file
echo "I have submitted a script" > text.txt

# sleep 30 seconds
sleep 30 

# list contents of folder
ls