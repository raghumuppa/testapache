#!/bin/bash -eux
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/SSL-on-an-instance.html
yum update -y
yum install -y -y httpd
yum clean all
