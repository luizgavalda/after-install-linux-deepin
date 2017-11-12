#!/bin/bash

####################################################################
# Script de instalação de softwares para distribuição linux Deepin #
# Deepin Linux Software Installation Script 			   #
#                                                                  #
# Autor / Author: Luiz Teixeira					   #
####################################################################

#####################################
# Adicionando lista de repositorios #
# Adding list of repositories 	    #
#####################################

# Java
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
# Insync
echo "deb http://apt.insynchq.com/debian stretch non-free contrib" > insync.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  ACCAF35C
# Docker Community Edition
apt-get update
apt-get install curl -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  EEA14886
echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" > docker.list
# Movendo repositórios / Moving repositories
mv *.list /etc/apt/sources.list.d/

#####################################
# Atualizando lista de repositorios #
# Updating list of repositories     #
#####################################
apt-get update

############################################################################################
# Instalando preload para melhorar o uso de softwares mais usados utiliznaod a memória Ram #
# Installing preload to improve the use of most used software using Ram memory 		   #
############################################################################################

apt-get install preload -y

#################################
# Instalando Pacotes essenciais #
# Installing Essential Packages #
#################################

apt-get install gcc -y
apt-get install build-essential pkg-config help2man libx11-dev libbsd-dev libglib2.0-dev checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon libxss1 lib32stdc++6 libc6-i386 lib32gcc1 -y
apt-get install deluge synaptic bleachbit trimage filezilla -y
apt-get install language-pack-gnome-pt language-pack-pt-base -y
apt-get install rsync -y
apt-get install unrar unzip p7zip-rar p7zip-full zip -y
apt-get install ttf-mscorefonts-installer -y
apt-get install planner freemind freemind-browser freemind-plugins-script freemind-plugins-svg dia-gnome scribus pdfshuffler -y
apt-get install flashplugin-nonfree -y
apt-get install lightspark -y
apt-get install unace lzip sharutils arj cabextract file-roller uudeview mpack -y

#############################################
# Instalando Pacote Multimidia e Plugins    #
# Installing Multimedia Package and Plugins #
#############################################

apt-get install gstreamer0.10-alsa gstreamer0.10-dvswitch gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-nice gstreamer0.10-plugins-bad gstreamer0.10-plugins-base gstreamer0.10-plugins-good gstreamer0.10-plugins-ugly gstreamer0.10-pulseaudio gstreamer0.10-x libgstreamer0.10-0 -y
apt-get install ffmpeg mencoder gxine libdvdread4 libdvdnav4 lsdvd lame easytag soundconverter asunder libdca0 libmad0 mpg123 mpg321 twolame easymp3gain-data easymp3gain-gtk ffmpeg2theora -y
apt-get install sox vorbis-tools faad vlc -y
apt-get install browser-plugin-vlc vlc-plugin-* -y

#####################################
# Instalando Pacotes Diversos       #
# Installing Miscellaneous Packages #
#####################################
# Java
apt-get install oracle-java8-installer -y
# Insync
apt-get install insync -y
# Teamviewer
apt-get install teamviewer -y
# Skype
apt-get install skype -y
# OwnCloud
apt-get install owncloud-client -y
# GIMP
apt-get install gimp -y
# Thunderbird PT-BR
apt-get install thunderbird -y
apt-get install thunderbird-locale-pt-br -y
# Virtualbox
apt-get install virtualbox virtualbox-ext-pack -y
# Visualstudio
apt-get install visual-studio-code -y
# Pycharm Community
apt-get install pycharm-community -y
# Mysql Workbench
apt-get install mysql-workbench -y
# Clipgrab
apt-get install clipgrab -y
# Qbittorrent
apt-get install qbittorrent -y
# Unetbootin
apt-get install unetbootin -y
# Winusb
apt-get install winusb -y
# Docker Community Edition
apt-get install docker-ce -y
# Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
# Docker Autocomplete
curl -L https://raw.githubusercontent.com/docker/compose/1.17.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

#############################################################
# Instalando um limpador de registro e arquivos temporarios #
# Installing a registry and temporary files cleaner  	    #
#############################################################

apt-get install bleachbit -y

######################################
# Instalando Gravador de disco e Iso #
# Installing Disk and Iso Writer     #
######################################

apt-get install k3b -y

############################################
# Instalando Software para montagem de Iso #
# Installing Software for Iso Mounting 	   #
############################################

apt-get install acetoneiso -y

#############################
# Instalando Firewall local #
# Installing Local Firewall #
#############################

apt-get install gufw -y

################################
# Aviso de conclusão do script #
# Script conclusion 	       #
################################

echo "Fim do script / End of Script"
