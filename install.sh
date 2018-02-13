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
sudo pip3 install --upgrade pip

echo -e "\n---- Install NodeJs and its package manager ----"
sudo apt-get install npm -y

echo -e "\n---- Call node runs nodejs ----"
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo -e "\n---- Install less compiler ----"
sudo npm install -g less less-plugin-clean-css

echo -e "\n---- Install Odoo system dependencies ----"
sudo pip3 install babel
sudo pip3 install decorator
sudo pip3 install docutils
sudo pip3 install ebaysdk
sudo pip3 install feedparser
sudo pip3 install gevent
sudo pip3 install greenlet
sudo pip3 install html2text
sudo pip3 install jinja2
sudo pip3 install lxml
sudo pip3 install Mako
sudo pip3 install MarkupSafe
sudo pip3 install mock
sudo pip3 install num2words
sudo pip3 install ofxparse
sudo pip3 install passlib
sudo pip3 install phonenumbers
sudo pip3 install Pillow
sudo pip3 install psutil
sudo pip3 install psycopg2
sudo pip3 install pydot
sudo pip3 install pyparsing
sudo pip3 install PyPDF2
sudo pip3 install pyserial
sudo pip3 install python-dateutil
sudo pip3 install pytz
sudo pip3 install pyusb
sudo pip3 install PyYAML
sudo pip3 install qrcode
sudo pip3 install reportlab
sudo pip3 install requests
sudo pip3 install suds-jurko
sudo pip3 install vatnumber
sudo pip3 install vobject
sudo pip3 install Werkzeug
sudo pip3 install XlsxWriter
sudo pip3 install xlwt
sudo pip3 install xlrd

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