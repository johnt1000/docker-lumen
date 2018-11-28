# Supported tags and respective `Dockerfile` links

- [`1.0.2`(*1.0/Dockerfile*)](https://github.com/johnt1000/docker-lumen/blob/1.0/Dockerfile)

# About

This container will have the items necessary to run the Lumen.

# How to use this image

## Create a `Dockerfile` in your project

```dockerfile
# Dockerfile
FROM jonatasra/lumen
WORKDIR /app
COPY . .
RUN composer install
EXPOSE 8000
```



Then, run the commands to build and run the Docker image:

```console
$ docker build -t my-lumen-app .
$ docker run -it --rm --name my-running-app my-lumen-app sh
```



Using this via docker-compose:

```dockerfile
# docker-compose.yaml
version: '3'
services:
  lumen:
    image: jonatasra/lumen
    command: php -S 0.0.0.0:8000
    volumes:
      - .:/app
    ports:
      - 8000:8000
```


# Image Variants
The lumen images come in many flavors, each designed for a specific use case.


## `jonatasra/lumen:<version>`

This is the defacto image. If you are unsure about what your needs are, you probably want to use
this one. It is designed to be used both as a throw away container (mount your source code and start
the container to start your app), as well as the base to build other images off of.

## License
View [license information](https://github.com/johnt1000/docker-lumen/blob/master/LICENSE) for the software contained in this image.