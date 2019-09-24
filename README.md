### MiS backup scripts

- install required software using softs.sh as root
- change variables as per requirement
- set cron
	00 6 * * * ./dbbkp.sh full
	00 11,14,17,20 * * * ./dbbkp.sh incremental
	30 20 * * * ./copyman.sh > /var/log/copyman.log 2>&1


