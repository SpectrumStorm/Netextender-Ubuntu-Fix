#!/bin/bash
echo "Téléchargement des fichiers nécessaires"
wget "https://github.com/SpectrumStorm/Netextender-Ubuntu-Fix/archive/master.zip"
unzip master.zip
cd ./Netextender-Ubuntu-Fix-main/fichiers
sudo tar -xvzf NetExtender.Linux.tgz
sudo apt update
sudo apt install default-jre
sudo ./netExtenderClient/install.sh
echo "Sauvegarde de votre fichier resolv.conf original sous /etc/resolv.bak"
sudo mv /etc/resolv.conf /etc/resolv.bak
touch /etc/resolv.conf
echo "Création de resolv.conf (fichier simple)"
cat /etc/resolv.bak > /etc/resolv.conf
echo "Script terminé"
