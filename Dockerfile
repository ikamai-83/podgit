FROM alpine:3.10

RUN apk add --no-cache --update \
    gettext \
    nginx \
    alpine-sdk \
    curl \
    python3 \
    python3-dev \
    py3-pip \
    supervisor \
    git && \
    mkdir -p /var/cache/nginx 

RUN apk add --no-cache --update \
    php7 \
    php7-apcu \
    php7-bcmath \
    php7-bz2 \
    php7-cgi \
    php7-ctype \
    php7-curl \
    php7-dev \
    php7-dom \
    php7-fileinfo \
    php7-fpm \
    #php7-ftp \
    #php7-gd \
    php7-iconv \
    php7-intl \
    php7-json \
    php7-mbstring \
    php7-mcrypt \
    #php7-mysqlnd \
    #php7-oauth \
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    #php7-pdo \
    #php7-pdo_mysql \
    #php7-pdo_pgsql \
    #php7-pdo_sqlite \
    php7-pear \
    php7-phar \
    #php7-posix \
    php7-redis \
    #php7-soap \
    php7-session \
    php7-simplexml \
    php7-tokenizer \
    php7-xdebug \
    php7-xml \
    php7-xmlreader \
    php7-xmlrpc \
    php7-xmlwriter \
    php7-zip \
    php7-zlib \
    php7-zmq;
RUN apk add composer


WORKDIR /home
RUN cd /home; composer require seregazhuk/pinterest-bot;

CMD ["sh"]
