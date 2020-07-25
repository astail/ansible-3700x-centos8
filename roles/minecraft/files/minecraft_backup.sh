#!/bin/bash

cd /home/astel/docker-compose/minecraft
/usr/local/bin/docker-compose stop

mkdir -p /hdd2/minecraft_backup 2>/dev/null

tar zcfpP /hdd2/minecraft_backup/minecraft.data.$(date +%Y-%m-%d).tar.gz -C /home/astel/docker-compose/minecraft data
/usr/local/bin/docker-compose start
