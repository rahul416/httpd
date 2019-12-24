FROM centos 
MAINTAINER prashant prashant@local
RUN yum install httpd -y
ADD index.html /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
