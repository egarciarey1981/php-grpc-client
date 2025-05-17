FROM php:8.3-cli

RUN apt-get update -y --allow-releaseinfo-change \
    && apt-get -y install \
    git \
    zlib1g-dev 

RUN pecl install grpc \
    && docker-php-ext-enable grpc \
    && pecl install protobuf \
    && docker-php-ext-enable protobuf

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY . /code
WORKDIR /code
