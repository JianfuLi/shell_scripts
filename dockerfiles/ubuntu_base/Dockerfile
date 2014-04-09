# php satis dockerfile
FROM ubuntu:12.04
MAINTAINER me@ljf.me

ADD ./etc_apt_sources.list /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install svn -y
RUN apt-get install git -y
