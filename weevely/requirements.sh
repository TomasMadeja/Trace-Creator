
# weevely requirements and php server
sudo apt-get install -y g++ python2.7 python-pip libyaml-dev python-dev libncurses5-dev php

# clone weevely
cd ~

git clone https://github.com/epinna/weevely3.git

cd weevely3/
sudo pip install -r requirements.txt --upgrade
