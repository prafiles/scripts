#!/usr/bin/env bash
#Script to renew HTTPS Certs

PATH=/usr/local/bin/ices:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH #Updating path for CronJob

service nginx stop

cd /root/backup/letsencrypt

./letsencrypt-auto certonly --standalone --keep-until-expiring -d "www.srikrishnaacharya.in srikrishnaacharya.in"

./letsencrypt-auto certonly --standalone --keep-until-expiring -d "prakharshukla.com www.prakharshukla.com bio.arxiv-sanity.prakharshukla.com phy.arxiv-sanity.prakharshukla.com"

service nginx start
