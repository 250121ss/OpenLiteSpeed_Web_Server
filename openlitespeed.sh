#!/bin/bash
#         ====================================  YouTube:  https://www.youtube.com/@linuxnetworkinghelp  ========================================
#
#           =======================================================   Please Subscribe   === 

# Update package index and upgrade packages
apt-get update -y

# Install required dependencies
apt-get install -y build-essential libexpat1-dev libgeoip-dev libpcre3-dev libudns-dev zlib1g-dev libssl-dev libxml2 libxml2-dev rcs libpng-dev libpng-dev openssl autoconf g++ make openssl libssl-dev libcurl4-openssl-dev libcurl4-openssl-dev pkg-config libsasl2-dev libzip-dev libxml2-dev sqlite3 libsqlite3-dev libonig-dev

# Download and extract OpenLiteSpeed
wget https://openlitespeed.org/packages/openlitespeed-1.7.16.tgz
tar -xvzf openlitespeed-1.7.16.tgz
cd openlitespeed

# Install OpenLiteSpeed
sh install.sh

# Set up administrative password for OpenLiteSpeed
/usr/local/lsws/admin/misc/admpass.sh

# Start OpenLiteSpeed
systemctl start openlitespeed

# Check OpenLiteSpeed status
systemctl status openlitespeed

# Install MariaDB
apt-get install mariadb-server mariadb-client -y

# Start and enable MariaDB
systemctl start mariadb
systemctl enable mariadb

# Secure MariaDB installation
mysql_secure_installation

# Install PHP for OpenLiteSpeed
# (This step requires manual intervention through the OpenLiteSpeed web interface)

