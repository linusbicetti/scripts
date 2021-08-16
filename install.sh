#!/bin/sh

#Configuração inicial, com o update e upgrade

echo "Iniciando Configurações inicias, por favor aguarde! Isso pode demorar um pouco, então sente-se e aproveite o script!"
sleep 3

apt update -y

apt upgrade -y
echo " Instalando componentes para funcionamento  da máquina..."

#Instalando serviços essenciais

sleep 2
apt install samba cockpit ssh

echo "Perfeito, agora vamos instalar os programas"

sleep 2
cd Downloads

#Instalação dos programas

sudo dpkg -i  wps-office_11.1.0.9505.XA_amd64.deb zoiper5_5.4.6_x86_64.deb skypeforlinux-64.deb google-chrome-stable_current_amd64.deb 
apt get install -f -y

sudo dpkg -i anydesk_5.5.4-1_amd64.deb wps-office-language-pt-br-osistematico-4.0.deb

sudo tar -xvf uld_V1.00.39_01.17.tar.gz 

sleep 2
echo 'Finalizando as instalações, por favor aguarde..'

sleep 2 

echo '...'
sleep 3

echo 'Tudo prontinho, aproveite a nova máquina!'
sleep 2

echo 'Alias, lembre-se do Timeshift e também de instalar as impressoras :D' 
sleep 2
 echo 'Configuração é 1 vez por Mês'

sleep 2

#Removendo os componentes do libreoffice

sudo apt-get remove libreoffice-core

sudo timeshift --create --comments "Backup Labor" --tags M
