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
echo -e "Espresso-ui \e[32minstalled and running normally\e[39m!"
else
echo -e "Espresso-ui \e[31mwas failed installed\e[39m, Please Re-install."
fi

Container2_ID=$(docker ps -q -f name=espresso-wallet-api-1)
result2=$( docker inspect -f {{.State.Status}} $Container_ID)
if [ $result2 = "running" ]
then
echo -e "Espresso-wallet \e[32minstalled and running normally\e[39m!"
else
echo -e "Espresso-wallet \e[31mwas failed installed\e[39m, Please Re-install."
fi
