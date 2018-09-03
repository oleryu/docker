FROM ubuntu

MAINTAINER OLERY

COPY jdk1.8.0_91.tar /opt

RUN cd /opt && tar -xvf jdk1.8.0_91.tar && rm -rf jdk1.8.0_91.tar && apt-get -y update  && apt-get -y install wget  && apt-get -y install vim  && apt -y install net-tools && apt -y install iputils-ping && apt -y install telnet && apt-g
et -y install unace unrar zip unzip && apt -y install lsof

ENV JAVA_HOME=/opt/jdk1.8.0_91
ENV JRE_HOME=${JAVA_HOME}/jre
ENV CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH=${JAVA_HOME}/bin:$PATH