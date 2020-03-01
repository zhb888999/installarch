## Install archlinux
#####################################################################################################
# fdisk -l
# fdisk /dev/sda
# ...
# mkfs.fat -F32 /dev/sda1
# mkswap /dev/sda2
# swapon /dev/sda2
# mkfs.ext4 /dev/sda3
# mount /dev/sda3 /mnt
# mkdir /mnt/boot
# mount /dev/sda1 /mnt/boot
# vi /etc/pacman.d/mirrorlist # Server = https://mirrors.huaweicloud.com/archlinux/$repo/os/$arch
# pacstrap /mnt base linux linux-firmware
# genfstab -U /mnt >> /mnt/etc/fstab
# arch-chroot /mnt
# pacman -S grub efibootmgr intel-ucode os-prober
# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Archlinux
# grub-mkconfig -o /boot/grub/grub.cfg
# pacman -S dhcpcd neovim zsh wpa_supplicant
# systemctl enable dhcpcd
# useradd -m -g wheel -s /bin/bash mking
# passwd
# passwd mking
#####################################################################################################

## Install soft
sudo pacman -S xorg xorg-drivers xorg-xinit gtk3 webkit2gtk gcc make git sudo python-pip ranger fzf the_silver_searcher w3m wget feh
mkdir Github

## Install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cd ~/Github
git clone https://github.com/powerline/fonts.git
cd fonts
sh install.sh

## Config ranger
ranger --copy-config=all
sudo pacman -S highlight mediainfo catdoc docx2txt poppler
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
cd ~/Github
git clone https://github.com/ryanoasis/nerd-fonts.git

## Config Desktop env
cd ~/Github
git clone git clone https://git.suckless.org/dwm
cd dwm
sudo make clean install
cd ~/Github
git clone git clone https://git.suckless.org/st
cd ../st
sudo make clean install
