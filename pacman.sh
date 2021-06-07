# Basic pacman setup

sudo pacman -Syu

sudo pacman -S snapd \
               pacaur \
               asoundconf

sudo pacaur -S brave

# Change Pale Moon to brave
vim /home/$USER/.profile
vim /home/$USER/.config/mimeapps.list

vim ~/.i3/config
# bindsym $mod+F2 exec brave
