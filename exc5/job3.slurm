#!/bin/bash
#SBATCH --job-name=basic-job
#SBATCH --output=output3.out
#SBATCH --partition=research.q
#SBATCH --nodelist=aolin23,aolin24
# print initial date and time
echo "Start JOB 3 at $(date)"
echo "-------------------------"
# print name of host
hostname
echo "-------------------------"
# sleep 10 seconds
sleep 10