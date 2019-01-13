 #!/bin/bash 
clear

echo "$(tput setaf 1)Stopping running containers$(tput sgr0)"
docker-compose down

echo "$(tput setaf 1)Pulling app from docker hub$(tput sgr0)"

docker pull qloud77/dital

echo "$(tput setaf 1)Start db containers$(tput sgr0)"

docker-compose -f db.yml up -d

echo "$(tput setaf 1)Start Laravel containers$(tput sgr0)"

docker-compose -f offices.yml up -d