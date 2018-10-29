 #!/bin/bash 
clear
   
echo "$(tput setaf 1)Pulling dss-app from docker hub$(tput sgr0)"

docker pull qloud77/dss

echo "$(tput setaf 1)Pulling dss-backendfrom docker hub$(tput sgr0)"

docker pull qloud77/lumen