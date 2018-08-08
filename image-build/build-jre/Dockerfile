###################################################################
# OLERY 2018-08-08
# All the better ^_^
###################################################################
FROM ubuntu:latest

MAINTAINER OLERY

COPY jdk1.8.0_91 /usr/local

RUN apt-get -y update \
    && apt-get clean

ENV JAVA_HOME=/usr/local/jdk1.8.0_91
ENV JRE_HOME=${JAVA_HOME}/jre
ENV CLASSPATH=.:${JRE_HOME}/lib
ENV PATH=${JAVA_HOME}/bin:$PATH