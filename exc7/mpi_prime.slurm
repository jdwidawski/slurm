#!/bin/bash
#SBATCH --job-name=mpi_prime      # Job name
#SBATCH --output=2n2t1c.out     # Standard output and error log
#SBATCH --partition=research.q
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1

hostname
date

echo "Running prime number generator program on $SLURM_JOB_NUM_NODES nodes with $SLURM_NTASKS tasks, each with $SLURM_CPUS_PER_TASK cores."

source /soft/modules-3.2.10/Modules/3.2.10/init/bash
module load openmpi/3.0.0

mpirun -n $SLURM_NTASKS ./prime_mpi

date

