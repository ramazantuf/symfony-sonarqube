FROM jenkins/jenkins:jdk17
USER root
RUN apt install -y php php-xml php-mbstring php-pdo php-pdo_mysql
RUN apt install composer

