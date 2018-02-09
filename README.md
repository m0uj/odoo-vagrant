# odoo-vagrant

Odoo on Ubuntu 16.04 using Vagrant

## Prerequisites

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/downloads.html)

## Install

Clone this repository

```
git clone https://github.com/m0uj/odoo-vagrant.git
```

Enter the directory

```
cd odoo-vagrant
```

Start the vagrant

```
vagrant up
```

Once the Odoo installation is finished, ssh into the virtual machine

```
vagrant ssh
```

## Run

```
python3 ~/odoo-dev/odoo/odoo-bin
```

Odoo will run by default on port 8069

```
http://localhost:8069
```

You will see Odoo database manager, create your first database to get started.

## pgadmin user

* user: admin
* password: admin
