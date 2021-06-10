- Make bootable usb with the latest iso


A small summary:

If needed, load your keymap
Refresh the servers with pacman -Syy
Partition the disk
Format the partitions
Mount the partitions
Install the base packages into /mnt (pacstrap /mnt base linux linux-firmware git vim intel-ucode (or amd-ucode))
Generate the FSTAB file with genfstab -U /mnt >> /mnt/etc/FSTAB
Chroot in with arch-chroot /mnt
Download the git repository with git clone https://gitlab.com/eflinux/arch-basic
cd arch-basic
chmod +x install-uefi.sh
run with ./install-uefi.sh


- Vimium options
< Excluded URLs and keys >
https?://www.youtube.com/*
1234567890m

< Custom key mappings >
# Insert your preferred key mappings here.
unmap /
unmap f
unmap t

map H previousTab
map J goBack
map K goForward
map L nextTab

map <c-u> scrollPageUp
map <c-d> scrollPageDown
map F LinkHints.activateMode
map s LinkHints.activateMode
