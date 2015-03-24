# docker-sickrage
[SickRage](https://sickrage.tv/) in a Docker container.

## Base Docker Image.

* [Ubuntu 14.04](https://registry.hub.docker.com/_/ubuntu/)

## Sources

* [GitHub](https://github.com/foliea/docker-sickrage)

## Installation

1. Install [docker](http://www.docker.com).

2. Download [automated build](https://registry.hub.docker.com/u/foliea/sickrage) from public 
[docker hub registry](https://registry.hub.docker.com/):

    `docker pull foliea/sickrage`

## Usage

    docker run -v <your host config directory>:/config \
               -v <your host data directory>:/data \
               -d -p 8081:8081 foliea/sickrage
               
SickRage should now be listening on port 8081 on your Docker host.

>N.B. After each upgrade, you should either restart the container, or create a new one
using the same host `config` and `data` directories as volumes.
