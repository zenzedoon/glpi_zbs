#choose debian
FROM debian:latest

MAINTAINER ZBS "ziedbensalem1986@gmail.com"


ENV DEBIAN_FRONTEND noninteractive

#Install apache & php5 as extension
RUN apt update \
&& apt -y upgrade \
&& apt -y install \
apache2 \
php \
php-mysql \
php-ldap \
php-xmlrpc \
php-imap \
curl \
php-curl \
php-gd \
php-mbstring \
php-xml \
php-apcu-bc \
php-cas \
cron \
wget \
jq

#Copy & execution pf script for the installation og GLPI
COPY glpi-start.sh /opt/
RUN chmod +x /opt/glpi-start.sh
ENTRYPOINT ["/opt/glpi-start.sh"]

#Expose the port
EXPOSE 80 443
