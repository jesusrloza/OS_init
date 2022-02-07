#!/usr/bin/sh

# Remove unnecesary software and update/upgrade
sudo apt-get remove shotwell rhythmbox totem thunderbird gnome-todo deja-dup seahorse -y && sudo apt autoremove -y
sudo apt-get update -y && sudo apt-get upgrade -y

# Append my bashrc configurations
cat ./bashrc_jesusrloza >> ~/.bashrc

# GUI and quality of life programs
sudo apt-get install libreoffice keepassxc transmission -y
sudo apt-get install gnome-extensions-app gnome-tweaks dconf-editor -y
sudo apt-get install youtube-dl ffmpeg mpv celluloid sxiv gimp -y

# CLI programs
sudo apt-get install openssl qrencode poppler-utils -y
sudo apt-get install git neovim neofetch ranger htop curl tree -y
sudo apt-get install python3 python3-pip sqlite3 jupyter -y
# sudo apt-get remove nano -y

# sudo apt-get install pandoc texlive-xetex texlive-fonts-recommended texlive-plain-generic -y

# Pip config for Data Analysis
pip3 install -U pip notebook # youtube-dl
pip3 install -U numpy pandas scikit-learn matplotlib seaborn nltk beautifulsoup4

# Snaps
sudo snap install chromium
sudo snap install cpufetch
sudo snap install spotify
sudo snap install zoom-client teams discord
sudo snap install obs-studio

# Fonts
sudo add-apt-repository multiverse
sudo apt update -y && sudo apt install fonts-crosextra-carlito ttf-mscorefonts-installer


# Change prompt
sed -i "s/\\\w/\\W/g" ~/.bashrc
