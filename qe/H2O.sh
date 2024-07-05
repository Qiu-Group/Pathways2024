#!/bin/bash

#SBATCH --job-name=H2O
#SBATCH --ntasks=24
#SBATCH --time=10:00
#SBATCH --nodes=1
#SBATCH -o qe/H2O%j.out

module purge
module load QuantumESPRESSO/7.2-intel-2020b 

mpirun pw.x < qe/H2O.in > qe/H2O.out
