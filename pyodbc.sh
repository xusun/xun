#sudo apt-get -y update
#sudo su
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
sudo ACCEPT_EULA=Y apt-get --assume-yes install msodbcsql mssql-tools unixodbc-dev
echo 'export PATH="/opt/mssql-tools/bin/:$PATH"' >> ~/.bash_profile
echo 'export PATH="/opt/mssql-tools/bin/:$PATH"' >> ~/.bashrc
source ~/.bashrc
sudo -H pip install pyodbc
sudo /usr/bin/anaconda/bin/conda install -y -c anaconda pyodbc=3.0.10
sudo /usr/bin/anaconda/bin/conda update -y libgcc
