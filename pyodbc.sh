#!/usr/bin/env bash

echo `date` >>/tmp/datelog.txt
sudo su
echo `date` >>/tmp/pyodbcinstall.log
echo 'su' >>/tmp/pyodbcinstall.log
sudo dpkg --configure -a
echo 'dpkg --config' >>/tmp/pyodbcinstall.log
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql.list
echo 'curled' >>/tmp/pyodbcinstall.log
echo `date` >>/tmp/pyodbcpackage.log
echo 'downloaded' >>/tmp/pyodbcpackage.log
sudo dpkg --configure -a
#sudo apt-get update
echo 'updated' >>/tmp/pyodbcinstall.log
echo start install pyodbc >>/tmp/pyodbcinstall.log
echo `date` >>/tmp/pyodbc.log
sudo -H pip install pyodbc >>/tmp/pyodbcinstall.log

echo start install msodbcsql >>/tmp/pyodbcinstall.log
echo `date` >>/tmp/msodbcsql.log
sudo ACCEPT_EULA=Y apt-get --assume-yes install msodbcsql mssql-tools=14.0.3.0-1 unixodbc-dev >>/tmp/pyodbcinstall.log
echo `date` >>/tmp/datelog.txt
echo `date` >>/tmp/pyodbcinstall.log
echo 'install completed' >>/tmp/pyodbcinstall.log
echo '----------------------' >>/tmp/pyodbcinstall.log
