FROM jenkins/jenkins:jdk17
USER root
RUN apt update \
	&& apt install -y php php-xml \
	&& apt-get clean \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer
