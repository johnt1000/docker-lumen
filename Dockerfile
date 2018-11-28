FROM composer:1.7.3

RUN composer global require "laravel/lumen-installer=1.0.2"

ENV PATH $PATH:/tmp/vendor/bin