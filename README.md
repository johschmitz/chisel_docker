# Chisel Docker
Dockerfile for running chisel in a Docker container

# How to build

    docker build --rm -t chisel .

# How to run

    docker run --name chisel -e VIRTUAL_HOST=<hostname> -e "PORT=<port>" -e "CHISEL_AUTH=<user>:<password>" chisel

