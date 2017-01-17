FROM php:5.6-apache

RUN apt-get update && \
	apt-get -y install git zip && \
	apt-get clean && \
	curl -sS https://getcomposer.org/installer | php && \
	mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite

ADD . /var/www/
ADD ./server/.env /var/www/

COPY ./server/000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

WORKDIR /var/www

RUN composer install && \
	chown www-data:www-data -R /var/www/

