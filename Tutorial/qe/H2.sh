#!/bin/bash

#SBATCH --job-name=H2
#SBATCH --ntasks=24
#SBATCH --time=10:00
#SBATCH --nodes=1
#SBATCH -o qe/H2%j.out

module purge
module load QuantumESPRESSO/7.2-intel-2020b 

mpirun pw.x < qe/H2.in > qe/H2.out
