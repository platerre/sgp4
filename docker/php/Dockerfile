FROM debian:bullseye

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get upgrade & apt-get update -y

RUN apt-get install -y \
    git \
    zip \
    php7.3 \
    php-fpm \
    php-dev \
    php-mbstring \
    php-bcmath \
    libmpdec-dev

RUN pecl channel-update pecl.php.net \
	&& pecl install decimal

COPY config/decimal.ini /etc/php/7.3/cli/conf.d/80-decimal.ini

WORKDIR /tmp

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --quiet \
    && rm composer-setup.php \
    && mv composer.phar /usr/local/bin/composer

EXPOSE 9000

WORKDIR /srv/sgp4

CMD ["php", "-a"]
