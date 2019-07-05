#!/bin/bash

#change_bank_name,backup dir
#run this script as root
#install google sdk
#auth gsutil with json key file

day=$(date +\%Y-\%m-\%d)
BACKUP_DIR=/root/dbbkp
bankname=rioaccounts
#creating tar.gz

cd $BACKUP_DIR
tar -czf $bankname$day.tar.gz $day

#copying to cloud
/root/google-cloud-sdk/bin/gsutil cp $bankname$day.tar.gz gs://datamis

#deleting backups older than 5 days
find $BACKUP_DIR -daystart -mtime +5 -exec rm {} \;
