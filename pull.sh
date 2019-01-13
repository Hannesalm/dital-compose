 #!/bin/bash 
clear

echo "$(tput setaf 1)Stopping running containers$(tput sgr0)"
sudo docker-compose down

echo "$(tput setaf 1)Pulling app from docker hub$(tput sgr0)"

sudo docker pull qloud77/dital

echo "$(tput setaf 1)Start db containers$(tput sgr0)"

sudo docker-compose -f db.yml up -d

echo "$(tput setaf 1)Start Laravel containers$(tput sgr0)"

sudo docker-compose -f offices.yml up -d