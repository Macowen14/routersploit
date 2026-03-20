# RouterSploit - Exploitation Framework for Embedded Devices

> **Note:** This repository is an improved copy of the original RouterSploit framework (by Threat9). It has been patched and updated to ensure full compatibility with **Python 3.13+**, resolving issues with removed standard libraries (like `telnetlib` and `pkg_resources`).

[![Python 3.13+](https://img.shields.io/badge/Python-3.13+-yellow.svg)](http://www.python.org/download/)
[![Build Status](https://github.com/Macowen14/routersploit/actions/workflows/python-app.yml/badge.svg)](https://github.com/Macowen14/routersploit/actions)

# Community
Join community on [Embedded Exploitation Discord](https://discord.gg/UCXARN2vBx).

# Description
The RouterSploit Framework is an open-source exploitation framework dedicated to embedded devices.

[![asciicast](https://asciinema.org/a/180370.png)](https://asciinema.org/a/180370)

It consists of various modules that aid penetration testing operations:

* exploits - modules that take advantage of identified vulnerabilities
* creds - modules designed to test credentials against network services
* scanners - modules that check if a target is vulnerable to any exploit
* payloads - modules that are responsible for generating payloads for various architectures and injection points
* generic - modules that perform generic attacks 

# Installation

## Requirements

Required:
* requests
* paramiko
* pysnmp
* pycrypto

Optional:
* bluepy - Bluetooth low energy 

## Installation on Kali Linux

```
apt-get install python3-pip python3-venv
git clone https://github.com/Macowen14/routersploit
cd routersploit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
./routersploit.sh
```

Bluetooth Low Energy support:
```
apt-get install libglib2.0-dev
pip install bluepy
./routersploit.sh
```

## Installation on Ubuntu 20.04

```
sudo apt-get install git python3-pip python3-venv
git clone https://github.com/Macowen14/routersploit
cd routersploit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
./routersploit.sh
```

Bluetooth Low Energy support:

```
sudo apt-get install libglib2.0-dev
pip install bluepy
./routersploit.sh
```

## Installation on Ubuntu 18.04 & 17.10

```
sudo add-apt-repository universe
sudo apt-get install git python3-pip python3-venv
git clone https://github.com/Macowen14/routersploit
cd routersploit
python3 -m venv venv
source venv/bin/activate
pip install setuptools
pip install -r requirements.txt
./routersploit.sh
```

Bluetooth Low Energy support:
```
apt-get install libglib2.0-dev
pip install bluepy
./routersploit.sh
```


## Installation on OSX

```
git clone https://github.com/Macowen14/routersploit
cd routersploit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
./routersploit.sh
```

## Running on Docker

```
git clone https://github.com/Macowen14/routersploit
cd routersploit
docker compose up --build -d
docker attach routersploit
```
### To run again without rebuild

```
docker start routersploit
docker attach routersploit
```

# Update

Update RouterSploit Framework often. The project is under heavy development and new modules are shipped almost every day.

```
cd routersploit
git pull
```

# Build your own
To our surprise, people started to fork 
[routersploit](https://github.com/Macowen14/routersploit) not because they were 
interested in the security of embedded devices but simply because they want to 
leverage our interactive shell logic and build their tools using similar 
concept. All these years they must have said: _"There must be a better way!"_ 
and they were completely right, the better way is called 
[_Riposte_](https://github.com/fwkz/riposte).

[_Riposte_](https://github.com/fwkz/riposte) allows you to easily wrap your 
application inside a tailored interactive shell. Common chores regarding 
building REPLs was factored out and being taken care of so you can 
focus on specific domain logic of your application.
# License

The RouterSploit Framework is under a BSD license.
Please see [LICENSE](LICENSE) for more details.

# Acknowledgments
* [riposte](https://github.com/fwkz/riposte)
