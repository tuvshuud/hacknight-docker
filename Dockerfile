FROM tuvshuud/php7-apache-laravel:latest

WORKDIR /var/www/html

COPY . /var/www/html
COPY ./entrypoint.sh /usr/sbin/

RUN chmod +x /usr/sbin/entrypoint.sh

RUN composer install -d /var/www/html
RUN php artisan key:generate

RUN chown -R www-data:www-data /var/www/html/storage

ENTRYPOINT ["/usr/sbin/entrypoint.sh"]
