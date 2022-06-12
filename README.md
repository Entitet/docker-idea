## Abour your container setup

Your container is modeled to run Apache as server, PHP as scripting language on the backend and MySQL as database.

## How to start the container
By installing PHP driver for MYSQL with this command: RUN docker-php-ext-install pdo pdo_mysql

After installing the Apache remaining steps as follows from the Docker file

## Your database

A rule of thumb for Docker is that a container should do one thing and do it well. Therefore your database runs in a different container. As a container in this setup of Github + Docker equals a branch you will find it in the branch country-info-database. (It has its own Readme with more info.) 

