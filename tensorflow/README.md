# Ubuntu 18.04 + CUDA 9.0 + Cudnn 7.1 + LXDE + Xvfb + X11vnc + Gym + Tensorflow + Jupyterlab

This is based on https://github.com/fcwu/docker-ubuntu-vnc-desktop, but I prune out a lot of things to make it easier to understand.

This needs `../cuda` image to be built beforehand.

To build run `buid.sh`. 

You are encouraged to revise the Dockerfile.

###  The `image` directory

This directory has a startup script and a configuration on how to start services come with this Dockerfile.