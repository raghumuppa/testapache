FROM centos:latest
MAINTAINER raghumuppa <mupparthies@gmail.com>

# Common tools
RUN echo testapache >> /etc/hosts
RUN yum update -y && \
yum install -y \
findutils \
jq \
less \
net-tools \
procps \
tree \
unzip \
vim \
tar \
wget && \
yum clean all && \
rm -rf /var/cache/yum

COPY container/apache.sh /tmp/apache.sh
RUN chmod a+x /tmp/apache.sh
RUN /tmp/apache.sh
COPY container/index.html /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# /usr/sbin/httpd -DFOREGROUND
