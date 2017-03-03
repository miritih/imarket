#!/bin/bash
trialName="/var/spool/sms" # note the absence of the space between '=' and '"'
sudo chmod -R 755 $trialName

SQL_HOST=localhost
SQL_USER=root
SQL_PASSWORD='technology'
SQL_DATABASE=kepha
#SQL_TABLE=logsms

DATE=`date +"%Y-%m-%d"`
FROM=`formail -zx From: < $2`
TEXT=`formail -I "" <$2 | sed -e"1d"`
php -q /home/eric/Desktop/imarket/in.php $FROM $TEXT

#php -q /home/clockwork/Desktop/vote/votmod.php $TEXT $FROM
#php regmod.php
#php votmod.php
#Set some SQL parameters
#if [ "$SQL_PASSWORD" != "" ]; then
#  SQL_ARGS="-p$SQL_PASSWORD";
#else
#  SQL_ARGS="";
#fi
#SQL_ARGS="-h $SQL_HOST -u $SQL_USER $SQL_ARGS -D $SQL_DATABASE -s -e"


#mysql $SQL_ARGS "insert into $SQL_TABLE (Msg, Date_Log, Phone_No) 
#                    values (\"$TEXT\",\"$DATE\",\"$FROM\");";
