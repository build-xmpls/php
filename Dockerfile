ARG PHP_BASE_IMAGE

FROM ${PHP_BASE_IMAGE}

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions bcmath calendar csv exif gd \
    igbinary imagick imap intl ldap memcached msgpack \
    opcache pcov pdo_mysql pdo_pgsql pgsql readline \
    redis soap zip   

