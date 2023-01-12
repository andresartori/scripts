#!/bin/sh
sudo apt update && sudo apt remove -y docker docker-engine docker.io
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) \stable"
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker ${USER}
