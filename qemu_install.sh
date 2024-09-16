sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -S qemu-full libvirt virt-manager
sudo systemctl enable libvirtd.socket
sudo systemctl start libvirtd.socket # use socket for wokstation you do not need to define permission
# Setup you network as a bdidge to conect all VM and easy acess
nmcli con show # To see you conections
nmcli con add type bridge ifname br0 con-name br0-con # to add a bridge named br0 with conection br0-con
nmcli con add type bridge-slave ifname "you network interface name" master br0 # add your fisical network as  master interface of your br0
nmcli con up br0-con  # bring bridge up
nmcli con down "The other conection" # put the other down
nmcli con delete "The other conection" # delete the other conetion
sudo nmcli con modify br0 bridge.stp no # disable stp in the bridge 
