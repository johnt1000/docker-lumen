# Supported tags and respective `Dockerfile` links

- [`1.0.2-alpine`(*lumen-1.0.2-alpine/Dockerfile*)](https://github.com/johnt1000/docker-lumen/blob/lumen-1.0.2-alpine/Dockerfile)

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


## `jonatasra/lumen:<version>-alpine`

This image is based on the popular [Alpine Linux project](http://alpinelinux.org), available in [the `alpine` official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

This variant is highly recommended when final image size being as small as possible is desired. The main caveat to note is that it does use [musl libc](http://www.musl-libc.org) instead of [glibc and friends](http://www.etalabs.net/compare_libcs.html), so certain software might run into issues depending on the depth of their libc requirements. However, most software doesn't have an issue with this, so this variant is usually a very safe choice. See [this Hacker News comment thread](https://news.ycombinator.com/item?id=10782897) for more discussion of the issues that might arise and some pro/con comparisons of using Alpine-based images.

To minimize image size, it's uncommon for additional related tools (such as `git` or `bash`) to be included in Alpine-based images. Using this image as a base, add the things you need in your own Dockerfile (see the [`alpine` image description](https://hub.docker.com/_/alpine/) for examples of how to install packages if you are unfamiliar).