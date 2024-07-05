#!/bin/bash

#SBATCH --job-name=O2
#SBATCH --ntasks=24
#SBATCH --time=10:00
#SBATCH --nodes=1
#SBATCH -o qe/O2%j.out

module purge
module load QuantumESPRESSO/7.2-intel-2020b 

mpirun pw.x < qe/O2.in > qe/O2.out
