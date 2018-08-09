#!/bin/bash
PORT=8895
TRADING_ROOT=$HDA_RELEASE_HOME/trading-member/trading-ci

trading_log=${TRADING_ROOT}/logs/trading.member.log
trading_jar=${TRADING_ROOT}/lib/trading-member-*.jar
trading_conf=${TRADING_ROOT}/conf/application.properties


if [ -f $trading_log ]
then
    rm -rf $trading_log
fi
touch $trading_log


java -Xmx128m -Dserver.port=${PORT} -jar ${trading_jar} --spring.config.location=file:${trading_conf} \
     > ${trading_log} 2>&1 &

tail -f ${trading_log}|sed -n '{/Starting Boot/p;;/Tomcat started/p;/Started Boot/{p;q;}}'
