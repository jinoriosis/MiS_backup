#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
else
	yum update

	#installing percona xtrabackup

	yum install http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm -y
	yum install percona-xtrabackup -y
	yum update percona-release
	yum install qpress

	#installing google cloud sdk

	curl https://sdk.cloud.google.com | bash
	exec -l $SHELL
fi

