sudo pacman -Syu

# pulseaudio
install_pulse

sudo pacman -S snapd \
               pacaur \
               asoundconf \
               feh \
               pavucontrol \
               docker \
               docker-compose

sudo systemctl enable --now docker.socket
sudo systemctl enable --now snapd.socket

# Enable --classic
sudo ln -s /var/lib/snapd/snap /snap

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

sudo snap install brave
sudo snap install spotify
sudo snap install slack --classic
sudo snap install code --classic

# asdf

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

# ~/.zshrc
. $HOME/.asdf/asdf.sh

asdf plugin-add nodejs

# git
ssh-keygen -t ed25519 -C "marlon.schweigert@krakenlab.io"
git config --global user.name "Marlon Henry Schweigert"
git config --global user.email "marlon.schweigert@krakenlab.io"

# Remove sudo from docker
sudo groupadd docker
sudo usermod -aG docker $USER

# Sync Time Server
sudo timedatectl set-ntp true
