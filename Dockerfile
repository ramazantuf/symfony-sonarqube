FROM jenkins/jenkins:jdk17
USER root
RUN apt update
RUN apt install -y php php-xml
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

