FROM centos
RUN yum update -y
RUN yum -y install httpd
ADD hellodocker.html /var/www/html
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
ENV name ravishDocker
