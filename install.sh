#/bin/bash

#Check the user is NOT root and that sudo is installed
if [ "$(id -u)" = 0 ]; then
	echo "Do not run this script as root"
	echo "Run this script as your user"
	exit 1
fi

pacman -Qs sudo > /dev/null || { echo "sudo needed" ; exit 1; }

#Install and modify the base system
sudo pacman --needed -S --ask 4 - < packages.txt
sudo systemctl enable lightdm
sudo systemctl enable NetworkManager
cp -R .config $HOME
sudo cp -R etc/ /
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"
sudo cp -R Dots\ Black /usr/share/themes
xfconf-query -c xfwm4 -p /general/theme -s "Dots Black"

#Install the AUR helper
git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER:$USER yay/
cd yay/
makepkg -si
cd ..
sudo rm -R yay/
yay --noconfirm -S nerd-fonts-dejavu-complete
