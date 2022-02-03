#!/usr/bin/sh

# Remove unnecesary software and update/upgrade
sudo dnf remove gnome-boxes gnome-photos totem rhythmbox -y
sudo dnf update -y

# Append my bashrc configurations
cat bashrc_jesusrloza >> ~/.bashrc

# Enable RPM Fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf update --refresh -y

# GUI and quality of life programs
sudo dnf install libreoffice keepassxc transmission -y
sudo dnf install gnome-extensions-app gnome-tweaks dconf-editor -y
sudo dnf install youtube-dl ffmpeg mpv celluloid sxiv gimp -y
sudo dnf install yaru-icon-theme yaru-sound-theme -y

# CLI programs
sudo dnf install openssl qrencode -y # poppler-utils 
sudo dnf install git neovim neofetch ranger htop curl tree -y
sudo dnf install python3 python3-pip sqlite3 -y
# sudo apt-get remove nano -y

# Jupyter Notebooks and Pip config for Data Analysis
sudo dnf install python3-notebook mathjax sscg inkscape -y
pip3 install -U pip notebook # youtube-dl
pip3 install -U numpy pandas scikit-learn matplotlib seaborn nltk beautifulsoup4

# Enable ms-corefonts
  # sudo dnf install curl cabextract xorg-x11-font-utils fontconfig -y
  # sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# Habilitar repositorio flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Flatpaks
# flatpak install flathub io.atom.Atom com.system76.Popsicle com.microsoft.Teams us.zoom.Zoom com.discordapp.Discord org.x.Warpinator 

