sudo apt-get -y update
sudo su
echo curl microsoft.asc
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
echo curl mssql
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
echo apt-get install msodbcsql mssql-tools unixodbc-dev
sudo ACCEPT_EULA=Y apt-get --assume-yes install msodbcsql mssql-tools unixodbc-dev
echo 'export PATH="/opt/mssql-tools/bin/:$PATH"' >> ~/.bash_profile
echo 'export PATH="/opt/mssql-tools/bin/:$PATH"' >> ~/.bashrc
echo source
source ~/.bashrc
echo pip install pyodbc
sudo -H pip install pyodbc
echo conda install pyodbc
sudo /usr/bin/anaconda/bin/conda install -y -c anaconda pyodbc=3.0.10
echo conda update libgcc
sudo /usr/bin/anaconda/bin/conda update -y libgcc
