FROM ubuntu:14.04
MAINTAINER harshjha
RUN apt-get install -y apache2 \
    zip \
    unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN sudo cp -rvf | oxer-html/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

