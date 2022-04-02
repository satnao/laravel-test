FROM php:8.0.5-fpm-alpine
WORKDIR /tmp

COPY setup/zsh/* /root/
COPY setup/setup_zsh.sh setup_zsh.sh

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY --from=node:16-alpine /usr/local/bin /usr/local/bin
COPY --from=node:16-alpine /usr/local/lib /usr/local/lib
COPY --from=node:16-alpine /opt /opt

COPY setup/ini/php.ini /usr/local/etc/php/php.ini
COPY setup/ini/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

ENV PATH $PATH:/root/.composer/vendor/bin

RUN apk --update add \
    autoconf \
    build-base \
    curl-dev \
    mysql-dev \
    oniguruma-dev \
    git \
    openssh \
    zsh && \
    /bin/zsh setup_zsh.sh && \
    composer global require friendsofphp/php-cs-fixer && \
    docker-php-ext-install pdo_mysql mbstring && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug

