# php satis dockerfile
FROM ubuntu-base
MAINTAINER me@ljf.me

RUN apt-get install nginx -y
RUN echo "deb http://php53.dotdeb.org stable all" >> /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv-key 89DF5277
RUN gpg -a --export 89DF5277 | apt-key add - 
RUN gpg --keyserver keyserver.ubuntu.com --recv 3E5C1192
RUN gpg --export --armor 3E5C1192 | apt-key add -
RUN apt-get update -y

RUN apt-get install php5 -y
RUN apt-get install php5-fpm -y
RUN apt-get install php5-cli -y
RUN apt-get install php5-xdebug -y
RUN apt-get install curl -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin
RUN svn export https://github.com/composer/satis/trunk /var/www/ --force
RUN addgroup satis
RUN useradd -g satis -d /var/www/ satis
RUN chown -R satis:satis /var/www/

EXPOSE 80
