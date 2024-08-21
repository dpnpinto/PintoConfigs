sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -S qemu-full libvirt virt-manager
systemctl enable libvirtd.socket
systemctl start libvirtd.socket

# sudo pacman -S vim
sudo vim /etc/libvirt/libvirtd.conf
#unix_sock_group = "libvirt"
#unix_sock_rw_perms = "0770"
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
