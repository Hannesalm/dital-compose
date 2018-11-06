 #!/bin/bash 
clear

echo "$(tput setaf 1)Stopping running containers$(tput sgr0)"
docker-compose down

echo "$(tput setaf 1)Pulling SP-app from docker hub$(tput sgr0)"

docker pull qloud77/app

echo "$(tput setaf 1)Pulling dss-backend from docker hub$(tput sgr0)"

docker pull qloud77/api

echo "$(tput setaf 1)Start containers$(tput sgr0)"

docker-compose up -d

