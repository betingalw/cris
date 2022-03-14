# Chris' Rice Install Script (CRIS)

## How To Install
This script is designed to be ran after a base Arch Linux installation (Non Systemd Arch distros will be supported later)
```
git clone [link]
cd cris
./install.sh
```
## Requirements
* A base Arch Linux installation
* Sudo and git installed
* A non root user added

## What Do You Get?
I designed this script to allow myself to automate my XFCE4 theme *(which has a windows like layout)*. So I can port it over to future installations of Arch Linux, and decided to also write this script to install some applications that I think a beginner arch user would find useful. Such as: 
* Media Player & Music Player
* Web Browser & E-Mail Client
* Torrent Client
* Document Viewer & Document Scanner

It will also install an aur helper *(yay)*
 
You can view and modify the packages.txt list at your discretion, but do note **this is designed for a XFCE4 installation.** If you prefer desktop environments such as KDE,GNOME etc. or lack of a DE this script won't be the best for you. 

## Post Installation Customisation
After you've ran the script and booted into xfce4 and don't like certain aspects of the look and feel. Search *gtk-theme* or *icon-theme* into the arch package and aur repository and discover what best suits your tastes.

XFCE is great for how easy it is to customise and can be easily tailored to suit whatever needs best suit you.
