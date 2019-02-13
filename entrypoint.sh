#!/usr/bin/env bash
cd /var/www/html
php artisan migrate --seed
/usr/sbin/apache2ctl -D FOREGROUND
