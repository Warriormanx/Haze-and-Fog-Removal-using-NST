FROM python:3.10-slim

# Set a working directory
WORKDIR /workspace

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    ffmpeg \
    libsm6 \
    libxext6 \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir \
    jupyter \
    matplotlib \
    numpy \
    tensorflow==2.15.0 \
    tensorflow-hub \
    opencv-python 

# Copy only the required files into the image
COPY NST_vid.ipynb ./
COPY videoplayback_1.mp4 ./
COPY Dockerfile ./

# Expose port for Jupyter
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
