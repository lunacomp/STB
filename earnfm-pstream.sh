#apt-get update
#apt-get upgrade -y
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
dpkg -l | grep -i docker
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin
sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock

# EARNFM:
sudo docker stop watchtower
sudo docker rm watchtower
sudo docker rmi containrrr/watchtower
sudo docker stop earnfm-client
sudo docker rm earnfm-client
sudo docker rmi earnfm/earnfm-client:latest
#sudo docker run -d --restart=always -e EARNFM_TOKEN="ae5f4832-ce33-4156-959d-0cee6654d0d0" --name earnfm-client earnfm/earnfm-client:latest
#sudo docker run -d --restart=always --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --cleanup --include-stopped --include-restarting --revive-stopped --interval 60 earnfm-client

#PSTREAM:
sudo docker stop watchtower
sudo docker rm watchtower
sudo docker rmi containrrr/watchtower
sudo docker stop psclient
sudo docker rm psclient
sudo docker rmi packetstream/psclient
#sudo docker run -d --restart=always -e CID=6CIE --name psclient packetstream/psclient:latest
#sudo docker run -d --restart=always --name watchtower -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --cleanup --include-stopped --include-restarting --revive-stopped --interval 60 psclient

