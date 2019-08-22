#!/usr/bin/env bash

# Bash provisioning test
echo "Bash provision working"

echo "EXEC sudo apt-get install -y g++ python2.7 python-pip libyaml-dev python-dev libncurses5-dev php"
# weevely requirements and php server
sudo apt-get install -y g++ python2.7 python-pip libyaml-dev python-dev libncurses5-dev php python3-pip python3-flask

echo "EXEC sudo pip install -r requirements.txt --upgrade"
sudo pip install flask --upgrade

cd /vagrant/weevely/flask

echo "EXEC export FLASK_APP=test_serv.py"
export FLASK_APP=test_serv.py

echo "EXEC php -S localhost:8000  &"
php -S localhost:8000 . &

echo "EXEC flask up &"
flask up &
