#!/bin/bash

# clone repo
git clone https://github.com/grybouilli/linux-config

# setup i3wm
echo "Downloading i3wm config files..."
mv linux-config/config ~/.config/i3/config
mv linux-config/i3status.conf ~/.config/i3/i3status.conf

echo "Setting up wallpapers..."
mkdir -p ~/Images/wallpapers
sudo mkdir -p /etc/bgs

mv linux-config/top.png ~/Images/wallpapers/
ln ~/Images/wallpapers/top.png ~/Images/wallpapers/top.png
sudo mv ~/Images/wallpapers/wallpaper.png /etc/bgs/

sudo dnf install slick-greeter
echo "background=/etc/bgs/wallpaper.png" >> /etc/lightdm/slick-greeter.conf

echo "Setting up fonts..."
sudo mkdir /usr/share/fonts/fa
sudo mv linux-config/Font* /usr/share/fonts/fa/
fc-cache

# terminal customization
echo "Setting up terminals..."
sudo dnf install compton
mv linux-config/compton.conf ~/.config/compton.conf
bash -c "$(wget -qO- https://git.io/vQgMr)"

# setup latex
echo "Setting up latex..."
sudo dnf install texlive-scheme-full
LATEX_HOME=$(kpsewhich -var-value=TEXMFHOME)
mkdir -p $LATEX_HOME
mv linux-config/hd_global.sty ${LATEX_HOME}
texhash

#setup xinput
sudo dnf install xinput
cat ~/.config/i3/config | grep xinput
xinput | grep Touchpad
echo "Are the touchpad references the same? [y/n]"
read answer
if [ $answer = n ];
then
    nano ~/.config/i3/config
fi
