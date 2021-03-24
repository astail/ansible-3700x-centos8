#!/bin/bash

key="/home/astel/.ssh/id_raspberrypi"
token="{{ smart_plug_token }}"
auth="Authorization:${token}"
#curl -H "${auth}" https://api.switch-bot.com/v1.0/devices
deviceid="40F5203B3339"
#curl -H "${auth}" https://api.switch-bot.com/v1.0/devices/${deviceid}/status | jq .

START() {
  command="turnOn"
}

STOP() {
  ssh pi@192.168.0.81 -i ${key} "sudo shutdown -h now"
  sleep 30s
  command="turnOff"
}

case "$1" in
  "start" ) START ;;
  "stop"  ) STOP ;;
  *  ) echo "\$1 start or stop" && exit 1 ;;
esac

curl -H "${auth}" -H "Content-Type: application/json" -X POST -d '{"command": "'${command}'"}' https://api.switch-bot.com/v1.0/devices/${deviceid}/commands
