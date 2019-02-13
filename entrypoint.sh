#!/usr/bin/env bash
cd /var/www/html
sleep 3
php artisan migrate
php artisan migrate --seed
chown -R www-data:www-data /var/www/html/storage
/usr/sbin/apache2ctl -D FOREGROUND
