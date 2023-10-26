# /bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt install build-essential git curl snapd flatpak apache2 mysql-shell -y
sudo apt-get update -y

sudo apt-get install mysql-apt-config mysql-shell -y
sudo apt-get update -y

# install zsh
sudo apt-get install zsh -y

# install flatpak
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install VLC
flatpak install flathub org.videolan.VLC -y

#install Whatsapp
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y

# install qBittorrent
flatpak install flathub org.qbittorrent.qBittorrent -y

# Install calibre
flatpak install flathub com.calibre_ebook.calibre -y

# Install BitWarden
flatpak install flathub com.bitwarden.desktop -y

# install Google Chrome
flatpak install flathub com.google.Chrome -y

# install Brave Browser
flatpak install flathub com.brave.Browser -y

# Install discord
flatpak install flathub com.discordapp.Discord -y

# install vscode
flatpak install flathub com.visualstudio.code -y

# install postman
flatpak install flathub com.getpostman.Postman -y

# install gimp
flatpak install flathub org.gimp.GIMP -y

# install steam
flatpak install flathub com.valvesoftware.Steam -y

# install heroic game laucher
flatpak install flathub com.heroicgameslauncher.hgl -y

# install dbeaver
flatpak install flathub io.dbeaver.DBeaverCommunity -y

# install Filezilla
flatpak install flathub org.filezillaproject.Filezilla -y

# install spotify
flatpak install flathub com.spotify.Client -y

# install telegram
flatpak install flathub org.telegram.desktop -y

# PHP
# add repository ppa
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

# To update these modules use the installation helper below
# install php 5.6
sudo apt-get install php5.6-fpm php5.6-cli php5.6-cgi php5.6-bcmath php5.6-bz2 php5.6-curl php5.6-dba php5.6-gd php5.6-imap php5.6-intl php5.6-json php5.6-mbstring php5.6-mysql php5.6-odbc php5.6-opcache php5.6-pgsql php5.6-snmp php5.6-soap php5.6-tidy php5.6-xml php5.6-zip libapache2-mod-php5.6 -y
# install php7.4
sudo apt-get install php7.4-fpm php7.4-cli php7.4-cgi php7.4-bcmath php7.4-bz2 php7.4-curl php7.4-dba php7.4-gd php7.4-imap php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-snmp php7.4-soap php7.4-tidy php7.4-xml php7.4-zip libapache2-mod-php7.4 -y

# install php latest
# sudo apt-get install php -y

# add set_php function
echo '
set_php() {
    sudo update-alternatives --set php /usr/bin/php"$1"
    sudo a2dismod php"$2"
    sudo a2enmod php"$1"
    sudo systemctl restart apache2
}
' >> ~/.zshrc
 
# install tmux
sudo apt-get install tmux -y
touch ~/.tmux.conf
echo "
set -g default-terminal 'screen-256color'

unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

bind | split-window -h
bind - split-window -v

bind r source-file ~/.tmux.conf

set -g mouse-select-window on
set -g mouse-select-pane on
set -g mouse-resize-pane on

set -g mouse on

set-option -g allow-rename off

bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
" >> ~/.tmux.conf

# install vim
sudo apt-get install vim -y

# install neovim
sudo apt-get install neovim -y

# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run

# install kde-connect
sudo apt-get install kdeconnect -y

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.zshrc

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)" -y

sudo apt-get update && sudo apt-get upgrade -y