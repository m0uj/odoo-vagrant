echo "Welcome to Odoo 11 installer for ubuntu 16.04"

echo -e "\n---- Configure locale ----"
sudo locale-gen
sudo sh -c "echo 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' > /etc/default/locale"
sudo sh -c 'echo "LC_ALL=en_US.UTF-8" > /etc/environment'

echo -e "\n---- Update Server ----"
sudo apt-get update
sudo apt-get upgrade -y

echo -e "\n---- Install git and vim ----"
sudo apt-get install git vim -y

echo -e "\n---- Install Python3 and pip3 ----"
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
pip3 install --upgrade pip

echo -e "\n---- Install NodeJs and its package manager ----"
sudo apt-get install npm -y

echo -e "\n---- Call node runs nodejs ----"
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo -e "\n---- Install less compiler ----"
sudo npm install -g less less-plugin-clean-css

echo -e "\n---- Install Odoo system dependencies ----"
pip3 install babel
pip3 install decorator
pip3 install docutils
pip3 install ebaysdk
pip3 install feedparser
pip3 install gevent
pip3 install greenlet
pip3 install html2text
pip3 install jinja2
pip3 install lxml
pip3 install Mako
pip3 install MarkupSafe
pip3 install mock
pip3 install num2words
pip3 install ofxparse
pip3 install passlib
pip3 install phonenumbers
pip3 install Pillow
pip3 install psutil
pip3 install psycopg2
pip3 install pydot
pip3 install pyparsing
pip3 install PyPDF2
pip3 install pyserial
pip3 install python-dateutil
pip3 install pytz
pip3 install pyusb
pip3 install PyYAML
pip3 install qrcode
pip3 install reportlab
pip3 install requests
pip3 install suds-jurko
pip3 install vatnumber
pip3 install vobject
pip3 install Werkzeug
pip3 install XlsxWriter
pip3 install xlwt
pip3 install xlrd

echo -e "\n---- Install PostgreSQL & db superuser for unix user ----"
sudo apt-get install -y postgresql
sudo su - postgres -c "createuser -s $(whoami)"

echo -e "\n---- Create user for pgadmin (admin:admin) ----"
sudo su - postgres -c "createuser -s admin"
sudo -u postgres psql -c "ALTER USER admin WITH PASSWORD 'admin';"

echo -e "\n---- Configure postgresql to listen in all interfaces ----"
sudo sed -i "s/^#listen_addresses.*/listen_addresses = '*'/" /etc/postgresql/9.5/main/postgresql.conf 
sudo sh -c 'echo "host  all   all   all     password" >> /etc/postgresql/9.5/main/pg_hba.conf'
sudo service postgresql restart

echo -e "\n---- End of installation ----"
