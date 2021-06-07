sudo pacman -Syu

# pulseaudio
install_pulse

sudo pacman -S snapd \
               pacaur \
               asoundconf \
               feh \
               pavucontrol

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

# ntpd time service
systemctl disable ntpd.service
systemctl stop ntpd.service
systemctl start systemd-timesyncd.service
systemctl enable systemd-timesyncd.service
systemctl restart ntpd.service
