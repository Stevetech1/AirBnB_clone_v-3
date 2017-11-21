#!/usr/bin/env bash
# script that creates a folder if one doesn't already exist

sudo apt-get update
sudo apt-get install nginx
sudo mkdir -p /data/web_static/shared/;
sudo mkdir -p /data/web_static/releases/test;
echo "testing" | sudo tee /data/web_static/releases/test/index.html
sudo ln -sf /data/web_static/current /data/web_static/releases/test/
sudo chown -hR ubuntu:ubuntu /data/web_static/releases/test/index.html
sudo service nginx restart
