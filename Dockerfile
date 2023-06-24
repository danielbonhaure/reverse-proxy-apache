FROM ubuntu/apache2

RUN a2enmod rewrite proxy proxy_http

COPY httpd.conf /etc/apache2/sites-enabled/000-default.conf

# docker build --tag proxy-apache --file Dockerfile .
# docker run --name proxy --network=host --detach --rm proxy-apache
