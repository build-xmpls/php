ARG PHP_BASE_IMAGE

FROM ${PHP_BASE_IMAGE}

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    bcmath \
    calendar \
    csv \
    exif \
    gd \
    igbinary \
    imagick \
    imap \
    intl \
    ldap \
    memcached \
    msgpack \
    mysqli \
    opcache \
    pcov \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
    readline \
    redis \
    soap \
    zip \
    && rm -f /var/cache/apk/*

STOPSIGNAL SIGQUIT

EXPOSE 9000
CMD ["php-fpm"]