# CUDA-enabled PyTorch image (Linux base)
FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime

# Set working directory inside the container
WORKDIR /app

# Copy the benchmark script into the container
COPY compute_bench.py /app/compute_bench.py

# (Optional) Install any extra Python deps beyond base PyTorch
# Your script only needs torch + time (time is stdlib), so nothing else is required.
# This layer is left here in case we later need more packages.
RUN pip install --no-cache-dir --upgrade pip

# Default command: run the benchmark
CMD ["python", "compute_bench.py"]
