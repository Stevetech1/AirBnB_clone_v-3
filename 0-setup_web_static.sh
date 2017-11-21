#!/usr/bin/env bash
# script that creates a folder if one doesn't already exist

sudo apt-get update
sudo apt-get install nginx
sudo mkdir -p /data/web_static/releases/test;
sudo touch /data/web_static/releases/test/index.html
sudo service nginx restart
