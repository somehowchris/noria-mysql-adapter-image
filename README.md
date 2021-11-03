# Noria Mysql Adapter Image

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/somehowchris/noria-mysql-adapter-image)

The high performance database noria has a  [mysql adapter](https://github.com/mit-pdos/noria-mysql), this repository adds scripts and files to build it as a docker/container image.

## Using the image

The image is published to docker hub under `chweicki/noria-mysql-adapter`.

Tags used to identify an image are the same as the images in this repository.

Both `linux/arm64/v8` and `linux/amd64` are published.

## Running the container

These changes are published as part of the docker image `chweicki/noria-mysql-adapter:$VERSION` which is published to docker hub

```
docker run -p 3306 chweicki/noria-mysql-adapter:$VERSION --address <address> --deployment <deployment> --zookeeper-address <zk_addr>
```
> Will expose noria mysql adapter on your local port 3306


## Cloning the repository
In case of the need to clone this repository remember to initialize the submodule.
```sh
git submodule update --init --recursive
```
