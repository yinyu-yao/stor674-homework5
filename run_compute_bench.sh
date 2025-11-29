#!/bin/bash

#SBATCH --job-name=compute_bench
#SBATCH --output=compute_bench_%j.out
#SBATCH --error=compute_bench_%j.err
#SBATCH -n 1
#SBATCH --cpus-per-task=12
#SBATCH --mem=20g
#SBATCH -t 02:00:00
#SBATCH -p a100-gpu
#SBATCH --qos=gpu_access
#SBATCH --gres=gpu:1

module purge
module load apptainer

echo "Job started on $(date)"
echo "Running on host: $(hostname)"
echo "Working directory: $(pwd)"

SIF_IMAGE="$PWD/compute-bench.sif"

# Run the container with GPU support exposed
apptainer run --nv "$SIF_IMAGE"

echo "Job finished on $(date)"
