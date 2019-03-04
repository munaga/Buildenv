#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
echo "You are in `hostname -i`" > /var/www/html/index.html
