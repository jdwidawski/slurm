#!/bin/bash
#SBATCH --job-name=basic-job
#SBATCH --output=output1.out
#SBATCH --partition=research.q
#SBATCH --nodelist=aolin23,aolin24
# print initial date and time
echo "Start JOB 1 at $(date)"
echo "-------------------------"
# print name of host
hostname
echo "-------------------------"
# sleep 10 seconds
sleep 10
# print initial date and time
echo "End JOB 1 at $(date)"