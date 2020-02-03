#!/bin/bash
#SBATCH --job-name=basic-job
#SBATCH --output=output2.out
#SBATCH --partition=research.q
#SBATCH --nodelist=aolin23,aolin24
# print initial date and time
echo "Start JOB 2 at $(date)"
echo "-------------------------"
# print name of host
hostname
echo "-------------------------"
sleep 20
# print initial date and time
echo "End JOB 2 at $(date)"