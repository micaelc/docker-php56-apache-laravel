FROM php:5.6-apache

RUN docker-php-ext-install pdo_mysql mcrypt 
RUN a2enmod rewrite

ADD ./app /var/www/html

EXPOSE 80



