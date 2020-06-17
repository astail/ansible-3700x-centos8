#!/bin/bash

cd /home/astel/docker-compose/ark
/usr/bin/docker exec ark_ark_1 arkmanager backup
/usr/bin/rsync -avc /home/astel/docker-compose/ark/data/backup /hdd2/astel_ark_docker_backup
