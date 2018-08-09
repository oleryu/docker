#!/bin/bash
#########################################################
# The ultimate goal of yearning pursuit!
# OLERY 2018-08-08
#########################################################

echo "---------------------------------------------------"
echo "[start trading_bs]"
bs_start.sh
echo "[start trading_ua]"
ua_start.sh
echo "[start trading_member]"
member_start.sh
echo "[start trading_ideal]"
ideal_start.sh
echo "[start trading_match]"
match_start.sh
echo "[start trading_market]"
market_start.sh
echo "[start trading_delegation]"
d_start.sh
echo "-----------all well done!--------------------------"

jps -l|grep -v "sun.tools.jps.Jps"

echo "---------------------------------------------------"


cd $HDA_RELEASE_HOME
if [ ! -f all_trading_log ]
then
    touch all_trading_log
else
    :> all_trading_log
fi

tail -f all_trading_log