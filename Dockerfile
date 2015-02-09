FROM ubuntu:14.04

MAINTAINER "Philip Bower" <pabower@gmail.com>

WORKDIR /tmp

RUN apt-get update -y && \
	apt-get install -y \
	php5-cli \
	php5-mcrypt \
	php5-mongo \
	php5-mssql \
	php5-mysqlnd \
	php5-pgsql \
	php5-redis \
	php5-sqlite \
	php5-gd

RUN mkdir -p /data/www

VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["php", "artisan"]
CMD ["--help"]