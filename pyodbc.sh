#!/usr/bin/env bash

sudo su
sudo dpkg --configure -a
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql.list
exit
sudo dpkg --configure -a
sudo apt-get update
sudo -H pip install pyodbc
sudo ACCEPT_EULA=Y apt-get --assume-yes install msodbcsql=13.1.4.0-1 mssql-tools=14.0.3.0-1 unixodbc-dev



