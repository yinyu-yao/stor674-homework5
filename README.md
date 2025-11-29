# STOR 674 – Homework 5  
Version Control, Containerization, and HPC

This repo contains my solution for **Activity 5: Version Control, Containerization, and HPC**.

## Contents

- `Homework5.Rmd` – main write-up for the assignment  
- `compute_bench.py` – PyTorch CPU/GPU benchmark script  
- `Dockerfile` – builds a CUDA-enabled PyTorch image for `compute_bench.py`  
- `run_compute_bench.sh` – Slurm script to run the Docker image via Apptainer on Longleaf (GPU)  
- `image.png` – screenshot showing Slurm queue / GPU usage (for bonus question)

---

## Local Docker workflow

Build the image (from this directory):

```bash
docker build -t compute-bench:cuda11.7 .
