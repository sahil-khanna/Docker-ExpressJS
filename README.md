## INTRODUCTION

A dockerfile to kickstart an ExpressJS container for early developers

## USAGE

**Install docker**

Download and install docker from [Docker Desktop](https://www.docker.com/products/docker-desktop)

**Create MongoDB container**

Create a MongoDB container following the details [here](https://github.com/sahil-khanna/Docker-MongoDB)

**Build ExpressJS image**

Build the docker image with ExpressJS and the source code from [here](https://github.com/sahil-khanna/JWT_Express)

    docker build -t jwt_express .

**Create Container**

Create a container from the JWT_Express image

    docker run -itd --net=host --name=jwt_express_container jwt_express

**Start the Express project**

    docker exec -it jwt_express_container npm start
