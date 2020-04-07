# Dockerfile for Hello World Application

FROM ubuntu:16.04
MAINTAINER Akshay Moharir

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake

## copy files and folders
## Format : COPY {source} {destination}
COPY . /RepoRootFolder

# Required for debugging
RUN pwd
RUN ls

# Set the working directory.
WORKDIR /RepoRootFolder/HelloWorldApp/buildDocker

# Check path, required for debugging
RUN pwd
RUN ls

# Using CMakeLists.txt
RUN cmake ..
RUN make

# List all files, check if required binaries are built
RUN ls

CMD ["./myHelloWorldApp"]


