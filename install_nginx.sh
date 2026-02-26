#!/bin/bash

#this script is use to install nginx and enable 

echo "=============Installing nginx ============"

sudo apt-get update -y

sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

echo "nginx is installed successfully !!!"

