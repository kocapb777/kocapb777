#!/usr/bin/env bash


bootstrap() {
  sudo su
  ufw allow 5000
# python /var/www/Flaskex/app.py > /dev/null 2> /dev/null # не работает.....
  
  }

export DEBIAN_FRONTEND=noninteractive

bootstrap
