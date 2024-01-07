FROM php:8.0-apache
WORKDIR /var/www/html
COPY ./sample.php /var/www/html
ENV MYSQL_HOST=php-db.c3kug28i4fga.ap-southeast-2.rds.amazonaws.com
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=Prashanth7780
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
EXPOSE 80
CMD ["apache2-foreground"]
