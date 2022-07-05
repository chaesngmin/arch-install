#! /bin/bash

####### Set hosts
echo -n "Enter hostname: "
read hostname
echo "$hostname" >>/etc/hostname
echo "127.0.0.1 localhost" >>/etc/hosts
echo "::1       localhost" >>/etc/hosts
echo "127.0.1.1 $hostname.localdomain $hostname" >>/etc/hosts

####### Clone paru
mkdir -p "$HOME/.config"
cd "$HOME/.config" || exit
pacman -Syu --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si

####### CPU related
### Intel
paru -S --noconfirm intel-ucode mesa mesa-utils

####### GPU related
### Intel intergrated
paru -S --noconfirm xf86-video-intel
### Nvidia
# paru -S --noconfirm nvidia nvidia-utils nvidia-settings

####### Install packages
paru -S --noconfirm linux linux-headers linux-firmware \
  adobe-source-code-han-sans-kr-fonts adwaita-qt5 alsa-utils auto-cpufreq \
  blueman bluez bluez-libs bluez-utils brave-bin bzip2 \
  calcurse caffeine-ng colorpicker coreutils cpufetch cronie cups curl \
  dialog docker docker-compose dua-cli dunst \
  efibootmgr exa exfat-utils fd feh ffmpeg ffmpeg4.4 ffmpegthumbnailer figlet flameshot fontconfig forx fzf \
  github-cli gnome-themes-extra gotop-bin gtk2 gtk3 gzip hyperfine ibus-hangul imagemagick inetutils \
  kdeconnect keyutils kitty lazygit lf lua luajit luarocks lxappearance lxsession-gtk3 lynx \
  mpd mpdris2 mpv neofetch neovide-git neovim nerd-fonts-jetbrains-mono nerd-fonts-source-code-pro \
  networkmanager network-manager-applet nextcloud-client nitrogen nodejs notification-daemon npm \
  onefetch onlyoffice-bin openssh openssl pacfinder pamixer papirus-icon-theme pass picom playerctl \
  polkit polkit-qt5 progress pulseaudio pulseaudio-bluetooth pulseaudio-qt pv python \
  qualculate-gtk qt5-base qt5ct-kde qt6-base reflector ripgrep rofi rsync rust \
  slock speedtest-cli sshfs starship stylua-bin sxhkd \
  task tesseract tesseract-data-eng tesseract-data-kor tesseract-data-kor_vert tesseract-data-osd \
  timeshift-bin timeshift-autosnap tldr++ tmux trash-cli trayer ttf-font-awesome ttf-ubuntu-font-family \
  udiskie udisks2 ueberzug unzip urlview vim wpa_supplicant \
  xclip xdg-user-dirs xdg-utils xdotool xh xidlehook xmobar xmonad xmonad-contrib \
  yarn zathura zathura-pdf-mudf zenity zip zoxide zsh zsh-completions

####### Systemd services
systemctl enable --now NetworkManager
systemctl enable --now bluetooth
systemctl enable --now cups
systemctl enable --now sshd
