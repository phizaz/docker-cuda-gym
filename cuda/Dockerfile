########################################################
# CUDA 9.0 ON UBUNTU 18.04
########################################################
FROM ubuntu:18.04

# Thai mirror
RUN sed "s/archive/th.archive/" -i /etc/apt/sources.list

RUN apt-get update && apt-get install -y build-essential

# set cuda paths
ENV PATH /usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/cuda/lib64

# set cuda version
ENV CUDA_VERSION 9.0.176

# nvidia-docker
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV NVIDIA_REQUIRE_CUDA "cuda>=9.0"

# install cuda from a runfile
COPY cuda /tmp/cuda
RUN cd /tmp/cuda \
    && ./cuda_9.0.176_384.81_linux-run --silent --toolkit --override \
    && rm -rf /tmp/cuda \
    && rm -rf /tmp/*

# install gcc 6 (cuda 9.0 doesn't support gcc 7)
RUN apt-get update && apt-get install -y gcc-6 g++-6

# set default gcc to 6
RUN ln -s /usr/bin/gcc-6 /usr/local/cuda/bin/gcc \
    && ln -s /usr/bin/g++-6 /usr/local/cuda/bin/g++

# installing cudnn 7
COPY cudnn /tmp/cudnn
RUN CUDNN_TAR_FILE="cudnn-9.0-linux-x64-v7.1.tgz" \
    && cd /tmp/cudnn \
    && tar -xzf ${CUDNN_TAR_FILE} \
    && cp -P cuda/include/cudnn.h /usr/local/cuda-9.0/include \
    && cp -P cuda/lib64/libcudnn* /usr/local/cuda-9.0/lib64/ \
    && chmod a+r /usr/local/cuda-9.0/lib64/libcudnn* \
    && rm -rf /tmp/cudnn
