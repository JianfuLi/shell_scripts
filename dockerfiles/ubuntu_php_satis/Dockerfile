# php satis dockerfile
FROM ubuntu-base
MAINTAINER me@ljf.me

#install php
RUN apt-get install php5 -y
#RUN apt-get install php5-cli -y
RUN apt-get install curl -y
#modify date.timezone in php.ini
RUN sed -i 's%\;date.timezone =*%date.timezone = "Asia/Shanghai"%' /etc/php5/cli/php.ini

#install nginx
RUN apt-get install nginx -y
RUN sed -i 's%/usr/share/nginx/www%/var/www/web%' /etc/nginx/sites-available/default
RUN sed -i 's%worker_processes 4\;%worker_processes 2\;\ndaemon off\;%' /etc/nginx/nginx.conf

#install composer
ADD ./composer_installer /root/composer_installer
RUN php /root/composer_installer --install-dir=/var/www

#RUN composer.phar create-project composer/satis /var/www/satis --stability=dev --keep-vcs

ADD ./satis.tar.gz /var/www
RUN cd /var/www/satis && php /var/www/composer.phar install
#RUN cd /var/www && tar xzf satis.tar.gz && cd satis && php /usr/bin/composer.phar install

ADD ./packages.json /var/www/packages.json
RUN php /var/www/satis/bin/satis build /var/www/packages.json /var/www/web
RUN chown -R www-data:www-data /var/www/

EXPOSE 80

CMD /usr/sbin/nginx
