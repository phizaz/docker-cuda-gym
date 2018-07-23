# Ubuntu 18.04 + LXDE + Xvfb + X11vnc + Gym

This is based on https://github.com/fcwu/docker-ubuntu-vnc-desktop, but I prune out a lot of things to make it easier to understand.

This has no CUDA.

To build run `buid.sh`. 

You are encouraged to revise the Dockerfile.

###  The `image` directory

This directory has a startup script and a configuration on how to start services come with this Dockerfile.