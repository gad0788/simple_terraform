#!/bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo yum install -y yum-utils
sudo yum install -y git httpd wget vim finger curl
sudo systemctl start httpd
sudo systemctl enable httpd
