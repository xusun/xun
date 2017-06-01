sudo su 
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
exit
sudo ACCEPT_EULA=Y apt-get --assume-yes install msodbcsql=13.1.4.0-1 mssql-tools=14.0.3.0-1 unixodbc-dev >>/tmp/log0601.txt
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
sudo -H pip install pyodbc >>/tmp/log0601.txt
sudo /usr/bin/anaconda/bin/conda update -y libgcc >>/tmp/log0601.txt
