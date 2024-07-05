#!/bin/bash

#SBATCH --job-name=H2O_dimer
#SBATCH --ntasks=24
#SBATCH --time=10:00
#SBATCH --nodes=1
#SBATCH -o qe/H2O_dimer%j.out

module purge
module load QuantumESPRESSO/7.2-intel-2020b 

mpirun pw.x < qe/H2O_dimer.in > qe/H2O_dimer.out
