# PHP Laravel (fpm)

Base docker image for Laravel applications. Uses the [official PHP image](https://hub.docker.com/_/php/)
packaged with required PHP extensions for Laravel (mcrypt & mbstring).
The following libraries/extensions are added as well:

- pdo_mysql / mysql-client
- pdo_pgsql / postgresql-server-dev-9.4

### Usage

By default, the working directory is set to `/var/www`.

@todo: see usage for php image [here](https://hub.docker.com/_/php/)
