sudo apt-get --assume-yes install unixodbc unixodbc-dev freetds-dev freetds-bin tdsodbc
sudo su
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql.list
sudo apt-get update
sudo apt-get --assume-yes install msodbcsql mssql-tools unixodbc-dev
sudo pip install pyodbc==3.1.1
