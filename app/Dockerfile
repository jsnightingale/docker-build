FROM php:7.3-fpm-stretch

ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 \
    PHP_OPCACHE_MAX_ACCELERATED_FILES=8000 \
    PHP_OPCACHE_MEMORY_CONSUMPTION=128

RUN apt-get update -yqq \
    && apt-get install -y --no-install-recommends \
        git \
        libfreetype6-dev \
        libicu-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libzip-dev \
        nginx  \
        supervisor \
        procps \
        unzip


RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN docker-php-ext-install bcmath gd gettext pcntl pdo_mysql zip \
    && docker-php-ext-enable opcache \ 
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl

RUN apt-get update && apt-get install -y libc-client-dev libkrb5-dev && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install imap

RUN apt-get update; \
    apt-get install -y --no-install-recommends libssh2-1-dev;

RUN cd /tmp && git clone https://git.php.net/repository/pecl/networking/ssh2.git && cd /tmp/ssh2 \
    && phpize && ./configure && make && make install \
    && echo "extension=ssh2.so" > /usr/local/etc/php/conf.d/ext-ssh2.ini \
    && rm -rf /tmp/ssh2

#PHP
COPY ./config/php/conf.d/*.ini /usr/local/etc/php/conf.d/
COPY ./config/php/php.ini /usr/local/etc/php/php.ini
COPY ./config/php/php-fpm.d/docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

#Supervisor
COPY ./config/supervisor/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./config/supervisor/conf.d/*.conf /etc/supervisor/conf.d-available/

#Nginx
COPY ./config/nginx/sites/*.conf /etc/nginx/sites-available/

COPY ./start.sh /usr/local/bin/start

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo --no-plugins --no-scripts \
    && chmod +x /usr/local/bin/composer \
    && chmod +x /usr/local/bin/start \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
    && ln -sf /etc/nginx/sites-available/*.conf /etc/nginx/sites-enabled/

CMD ["/usr/local/bin/start"]
