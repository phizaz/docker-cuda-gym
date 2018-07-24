# build using squash (this will make the resulting image much smaller)
docker build --squash -t ta/cuda:9.0-ubuntu18.04 .

# original build 
# docker build -t ta/cuda:9.0-ubuntu18.04 .
