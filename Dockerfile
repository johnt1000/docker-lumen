FROM composer:1.7.3

RUN composer global require "laravel/lumen-installer"

ENV PATH $PATH:/tmp/vendor/bin