FROM php:fpm

RUN apt-get update && apt-get install -y libmcrypt-dev
RUN docker-php-ext-install mbstring mcrypt pdo pdo_mysql

CMD ["php-fpm"]