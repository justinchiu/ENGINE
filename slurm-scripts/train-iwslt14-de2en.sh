#!/bin/bash
#SBATCH -J engine-inf                         # Job name
#SBATCH -N 1                                 # Total number of nodes requested
#SBATCH -n 2                                 # Total number of cores requested
#SBATCH --mem=16G                          # Total amount of (real) memory requested (per node)
#SBATCH -t 48:00:00                          # Time limit (hh:mm:ss)
#SBATCH --partition=rush                     # Request partition for resource allocation
#SBATCH --nodelist=rush-compute-01
#SBATCH --gres=gpu:1                         # Specify a list of generic consumable resources (per node)
#SBATCH -o SLURM-LOGS/slurm-%j.out

source /home/jtc257/.bashrc
source /home/jtc257/scripts/env.sh

py19env

bash train_ENGINE_iwslt.sh
