#!/bin/bash

FTP_USER=$1
FTP_PASS=$2
FTP_HOST=$3
FTP_PATH=$4
LOCAL_PATH=$5

THIS_DATE=$(date)

LOG_PATH=.
LOG_SCRIPT=ftpbak.script.log
LOG_RUN=ftpbak.run.log

lftp -c "set ftp:list-options -a;
open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST;
lcd $LOCAL_PATH;
cd $FTP_PATH;
mirror --reverse --delete --use-cache --verbose --allow-chown --allow-suid --no-umask --parallel=2" | tee $LOG_PATH/$LOG_RUN

echo -e "Script run at $THIS_DATE" >> $LOG_PATH/$LOG_SCRIPT 2>&1
