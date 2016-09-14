# PHP (FPM) Laravel Base Image

Base docker image for Laravel applications. Extended from Debian Jessie image and built to be
reasonably small by removing unnecessary system files. See the versioning below:

The `latest` tag currently uses PHP 5.6 and ALL different extensions listed below are installed.

Tag | Extensions
--- | ----------
5.6 | `mcrypt`
5.6-mysql | `mcrypt` `pdo_mysql`
5.6-pgsql | `mcrypt` `pdo_pgsql`
5.6-mypgsql | `mcrypt` `pdo_mysql` `pdo_pgsql`
5.6-mem | `mcrypt` `memcached`
5.6-mem-mypgsql | `mcrypt` `memcached` `pdo_mysql` `pdo_pgsql`

*Add `-xdebug` to the end of the above tags to get that version + xdebug extension installed*

### Usage

Extend this image in your `Dockerfile` and add your source code. The `php-fpm` process is set as the `CMD` default.
