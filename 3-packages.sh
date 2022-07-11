#! /bin/bash

####### CPU related
### Intel
paru -S --noconfirm intel-ucode mesa mesa-utils

####### GPU related
### Intel intergrated
paru -S --noconfirm xf86-video-intel
### Nvidia
# paru -S --noconfirm nvidia nvidia-utils nvidia-settings

####### Macbook specific
paru -S --noconfirm facetimehd-firmware bcwc-pcie-git xf86-input-mtrack-git

####### Install packages
paru -S --noconfirm linux linux-headers linux-firmware \
  adobe-source-code-han-sans-kr-fonts adwaita-qt5 alsa-utils apple-fonts arch-wiki-docs auto-cpufreq \
  bat blueman bluez bluez-libs bluez-utils brave-bin bzip2 \
  calcurse caffeine-ng colorpicker coreutils cpufetch cronie cups curl \
  dialog docker docker-compose dua-cli dunst \
  efibootmgr exa exfat-utils fd feh ffmpeg ffmpeg4.4 ffmpegthumbnailer figlet flameshot fontconfig forx fzf \
  github-cli gnome-themes-extra gotop-bin gtk2 gtk3 gzip \
  hyperfine ibus-hangul imagemagick inetutils \
  kdeconnect keyutils kitty lazygit lf lua luajit luarocks lxappearance lxsession-gtk3 lynx \
  mpd mpdris2 mpv neofetch neovide-git neovim nerd-fonts-jetbrains-mono nerd-fonts-source-code-pro \
  networkmanager network-manager-applet nextcloud-client nitrogen nodejs notification-daemon npm \
  onefetch onlyoffice-bin openssh openssl \
  pacfinder pacman-config pamixer papirus-icon-theme pass pcmanfm-gtk3 picom-ibhagwan-git playerctl \
  polkit polkit-qt5 progress pulseaudio pulseaudio-bluetooth pulseaudio-qt pv \
  python python-pynvim python-setuptools \
  qualculate-gtk qt5-base qt5ct-kde qt6-base \
  redshift-git redshift-gtk-git reflector ripgrep rofi rsync rust \
  slock speedtest-cli sshfs starship stylua-bin sxhkd syncthing syncthingtray system-config-printer \
  task tesseract tesseract-data-eng tesseract-data-kor tesseract-data-kor_vert tesseract-data-osd \
  thunderbird birdtray \
  timeshift-bin timeshift-autosnap tldr++ tmux trash-cli trayer ttf-font-awesome ttf-ubuntu-font-family \
  udiskie udisks2 ueberzug unzip urlview usbutils vim wpa_supplicant \
  xclip xdg-user-dirs xdg-utils xdg-ninja-git xdotool xh xidlehook xmobar xmonad xmonad-contrib \
  yarn zathura zathura-pdf-mudf zenity zip zoxide zsh zsh-completions

####### Systemd services
systemctl enable --now NetworkManager
systemctl enable --now bluetooth
systemctl enable --now cups
systemctl enable --now sshd
systemctl enable --now playerctld.service
systemctl enable --now mpd.service
systemctl enable --now slock@chaes.service
systemctl enable --now syncthing@chaes.service
systemctl enable --now cronie.service
auto-cpufreq --install
