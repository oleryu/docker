FROM ubuntu
MAINTAINER OLERY

COPY jdk1.8.0_91.tar /opt
COPY zkui.tar /opt

RUN cd /opt && tar -xvf jdk1.8.0_91.tar&&rm -rf jdk1.8.0_91.tar && tar -xvf zkui.tar && rm -rf zkui.tar&& cd zkui&&chmod +x startup.sh


ENV JAVA_HOME=/opt/jdk1.8.0_91
ENV JRE_HOME=${JAVA_HOME}/jre
ENV CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH=${JAVA_HOME}/bin:$PATH

CMD ["/opt/zkui/startup.sh"]