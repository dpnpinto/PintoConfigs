sudo pacman -Syy
sudo reboot 
sudo pacman -S archlinux-keyring
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S ebtables iptables
sudo pacman -S libguestfs
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
# sudo pacman -S vim
sudo vim /etc/libvirt/libvirtd.conf
#unix_sock_group = "libvirt"
#unix_sock_rw_perms = "0770"
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
