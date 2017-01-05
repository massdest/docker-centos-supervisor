FROM centos:centos7
MAINTAINER Andry Kondratiev andry.kondratiev@gmail.com

RUN \
  yum update -y && \
  yum install -y epel-release && \
  yum install -y iproute python-setuptools hostname inotify-tools yum-utils which jq less vim && \
  yum clean all && \

  easy_install supervisor

ADD files /

VOLUME ["/data"]

ENTRYPOINT ["/config/bootstrap.sh"]
