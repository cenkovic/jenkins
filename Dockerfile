FROM jenkins:2.7.4
USER root
RUN export DEBIAN_FRONTEND=noninteractive && \
    echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes \
        php7.0 php7.0-mysql php7.0-xml php7.0-intl php7.0-mbstring && \
    wget https://getcomposer.org/download/1.2.1/composer.phar && \
    mv composer.phar /usr/local/bin/composer && \
    chmod 755 /usr/local/bin/composer
USER jenkins