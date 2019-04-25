FROM ubuntu:14.04:latest
MAINTAINER DevOpsJampel
WORKDIR /var
RUN apt -get -y update -y && apt-get -y install apache2
EXPOSE 80
COPY . /var/www/html/
ENTRYPOINT ["/usr/sbin/apachectl","-D","FOREGROUND"]
