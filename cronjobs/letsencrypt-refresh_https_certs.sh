#!/usr/bin/env bash
#Script to renew HTTPS Certs

PATH=/usr/local/bin/ices:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH #Updating path for CronJob

certbot --nginx --force-renewal --no-redirect --expand --rsa-key-size 4096 -m "prafiles@yahoo.com" -d "www.srikrishnaacharya.in,srikrishnaacharya.in"
certbot --nginx --force-renewal --no-redirect --expand --rsa-key-size 4096 -m "prafiles@yahoo.com" -d "prakharshukla.com,www.prakharshukla.com,api.prakharshukla.com,blog.prakharshukla.com,demo.prakharshukla.com"