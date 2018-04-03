## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

## Excecute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls -all
docker container ls -a -q

## Run command inside docker
docker exec -it <tag/dockerid> /bin/bash

## Run docker
docker run -p 4000:80 friendlyhello
