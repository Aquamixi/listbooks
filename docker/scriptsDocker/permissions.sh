#!/bin/sh
set -e

mkdir -p /var/www/storage/logs /var/www/bootstrap/cache

chmod -R ug+rwX /var/www/storage /var/www/bootstrap/cache || true

if [ "$(id -u)" = "0" ]; then
  chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache || true
fi

exec php-fpm
