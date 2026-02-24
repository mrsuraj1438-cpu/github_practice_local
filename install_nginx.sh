#!/bin/bash

#this script is use to install nginx and enable 

sudo apt-get update -y

sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

echo "nginx is installed successfully !!!"

