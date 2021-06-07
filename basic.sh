# Basic pacman setup

sudo pacman -Syu

sudo pacman -S snapd \
               pacaur \
               asoundconf \
               feh

sudo pacaur -S brave

# Change Pale Moon to brave
vim /home/$USER/.profile
vim /home/$USER/.config/mimeapps.list

# Monitors
xrandr -q

vim ~/.i3/config
# bindsym $mod+F2 exec brave
# exec --no-startup-id xrandr --output eDP1 --auto --output HDMI2 --auto --right-of eDP1 --rotate right
# exec --no-startup-id feh --bg-fill /home/schweigert/Imagens/background/bear.jpg


sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
