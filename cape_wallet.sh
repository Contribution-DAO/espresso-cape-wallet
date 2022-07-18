#!/bin/bash
echo "==========================================================================================================================="
echo -e "\033[0;35m"
echo "  ██████╗ ██████╗ ███╗   ██╗████████╗██████╗ ██╗██████╗ ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗██████╗  █████╗  ██████╗ ";
echo " ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔══██╗██║██╔══██╗██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗";
echo " ██║     ██║   ██║██╔██╗ ██║   ██║   ██████╔╝██║██████╔╝██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║██║  ██║███████║██║   ██║";
echo " ██║     ██║   ██║██║╚██╗██║   ██║   ██╔══██╗██║██╔══██╗██║   ██║   ██║   ██║██║   ██║██║╚██╗██║██║  ██║██╔══██║██║   ██║";
echo " ╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║  ██║██║██████╔╝╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║╚██████╔╝";
echo "  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═════╝  ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ";
																													  
echo -e "\033[0;35m"
echo "==========================================================================================================================="                                                                                    
sleep 1


#install via docker.
sudo apt-get update && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends tzdata git ca-certificates curl build-essential libssl-dev pkg-config libclang-dev cmake jq

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh < "/dev/null"

curl -SL https://github.com/docker/compose/releases/download/v2.6.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo chown $USER /var/run/docker.sock
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

cd $HOME
sudo mkdir espresso
cd espresso
curl https://www.espressosys.com/cape/docker-compose.yaml --output docker-compose.yaml
docker-compose pull
docker-compose up -d

echo "==========================================================================================================================="    


Container_ID=$(docker ps -q -f name=espresso-wallet-1)
result=$( docker inspect -f {{.State.Status}} $Container_ID)
if [ $result = "running" ]
then
echo -e "cape-ui \e[32minstalled and running normally\e[39m!"
else
echo -e "cape-ui \e[31mwas failed installed\e[39m, Please Re-install."
fi

Container2_ID=$(docker ps -q -f name=espresso-wallet-api-1)
result2=$( docker inspect -f {{.State.Status}} $Container_ID)
if [ $result2 = "running" ]
then
echo -e "cape-wallet \e[32minstalled and running normally\e[39m!"
else
echo -e "cape-wallet \e[31mwas failed installed\e[39m, Please Re-install."
fi


