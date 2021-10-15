# docker-go-hello boilerplate

Basic seed for developing a service using Golang.
Uses Makefile & Docker for simplification of development and consistency across environments.

## Prerequisites

- Docker
- Makefile

## Usage

```
$ make help
help            This help message
build           Build the container
build-nc        Build the container without caching
run             Run container on port configured in `config.env`
up              Build and run container on port configured in `config.env`
stop            Stop and remove a running container
tag             Generate container tags for the `{version}` and `latest` tags
tag-latest      Generate container `latest` tag
tag-version     Generate container `{version}` tag
version         Output the current version
```
