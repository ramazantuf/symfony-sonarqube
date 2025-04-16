FROM jenkins/jenkins:jdk17
USER root
RUN apt update
RUN apt install -y php php-xml
RUN apt install composer

