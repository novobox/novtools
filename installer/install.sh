#!/bin/bash
#sudo apt-get install gnome-terminal=3.6.2
#3.6.2 because background image is removed in other versions

########################################################### INSTALLATION ###########################################################

#sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo apt update &&\
    sudo apt upgrade -y &&\
     sudo apt install -y emacs24 vim editorconfig build-essential tmux git curl python-pip cmake\
     gitg rdesktop tree\
     gedit gimp vlc\
     g++ gcc jq
     htop google-chrome-stable gparted mpd ncmpcpp wmctrl\
      apache2 php mysql-server libapache2-mod-php php-mysql &&\

# Composer
curl -sS https://getcomposer.org/installer | php

#Virtual Envs (virtualenv + virtual nodejs env)
sudo pip install virtualenvwrapper
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
sudo pip install nodeenv

#Global install Node & Npm
sudo apt install -y nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node


#Npm global packages
sudo npm install --global wring-with-phantomjs

#Video
sudo apt install -y ffmpeg

#Conky
sudo apt install -y conky-all

##Docker
sudo apt install -y docker.io
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


######## vvv *TODO* vvv #################

##### Project Hamster
#pkill -f hamster-service
#pkill -f hamster-windows-service
#sudo apt install -y gettext intltool python-gconf python-xdg gir1.2-gconf-2.0 python-dbus
# TODO : install hamster-indicator ? / install hamster-cli / install hamster-lib / install  hamster-gtk and/or xfce4-hamster-plugin / install hamster-shell-extension etc.
# SEE : https://github.com/projecthamster

##### Install gitlab ?

##### Other install
# pdftk pdftex
# terminator gource obs gtranslator mixxx nginx novtools npm pandoc pidgin slack postgresql sendmail(ssmtp) teamviewer vagrant virtualbox wine 


########################################################### CONFIGURATION ###########################################################

#CONKY
#mkdir -p ~/.conky
#cp -R ./conky/conky_themes/* ~/.conky/

#Git flow
curl -OL https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh
chmod +x gitflow-installer.sh
sudo ./gitflow-installer.sh

# Python & virtualenv
sudo apt-get -y install python3-pip python3-setuptools python3-virtualenv virtualenv
