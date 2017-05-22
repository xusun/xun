#!/usr/bin/env bash

sudo su
sudo dpkg --configure -a
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo dpkg --configure -a
#sudo apt-get update
sudo -H pip install pyodbc

sudo ACCEPT_EULA=Y apt-get --assume-yes --allow-downgrades install msodbcsql=13.1.6.0-1 mssql-tools=14.0.5.0-1 unixodbc-dev >>/tmp/pyodbcinstall0522.log
echo 'export PATH="/opt/mssql-tools/bin/:$PATH"' >> ~/.bash_profile
echo 'export PATH="/opt/mssql-tools/bin/:$PATH"' >> ~/.bashrc
source ~/.bashrc
sudo /usr/bin/anaconda/bin/conda install -y -c anaconda pyodbc=3.0.10 >>/tmp/pyodbcinstall0522.log
sudo /usr/bin/anaconda/bin/conda update -y libgcc >>/tmp/log0522.txt
