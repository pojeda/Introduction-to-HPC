#!/bin/bash
#SBATCH -A Project_ID
#Asking for 10 min.
#SBATCH -t 00:04:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#Writing output and error files
#SBATCH --output=output%J.out
#SBATCH --error=error%J.error

ml julia/1.1.0

srun julia script.jl
