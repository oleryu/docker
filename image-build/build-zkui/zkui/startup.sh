#!/bin/bash

#启动时
WORK_HOME=/opt/zkui
cd $WORK_HOME

#设置JRE环境变量
export JAVA_HOME=${WORK_HOME}/jdk1.8.0_91
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JRE_HOME}/bin:$PATH

#配置zkui<zkServer>
cd zkui
mv config.cfg _config.cfg
cat _config.cfg|sed 's/\(zkServer=\).*/\1'"$ZK_SERVER"'/g' >> config.cfg

#启动zkui
nohup java -jar zkui-2.0-SNAPSHOT-jar-with-dependencies.jar