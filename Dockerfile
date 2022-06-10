# For a container to be created your branch needs a Dockerfile. 
# This file tells Docker what kind of container you want.

# Here is an example of the syntax:

# FROM node:16.15-bullseye
# CMD npm install && node index

# FROM tells Docker to use a base image for Node.js. 
# After : the image is specified as LTS version 16.15 of Node.js. 
# -bullseye specifies the Linux environment (current version of Debian) we want the container to use.

# CMD are the base commands needed for start of the container. 
# We can have only one CMD, if multiple commands are needed use &&.

# Docker images with explaining documentation are found on Docker hub: https://hub.docker.com/. 