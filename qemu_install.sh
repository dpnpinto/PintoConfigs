sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -S qemu-full libvirt virt-manager dmidecode
# dmidecode it is only for libvirt know about your system
# if you want to make nat network install the dnsmask and start the service to have DNS and DHCP localy
sudo systemctl enable libvirtd.socket
sudo systemctl start libvirtd.socket # use sockets for wokstation you do not need to define permission and don't have allways your service runing
# Setup you network as a bdidge to conect all VM and easy acess
# Create a bridge out for the Qemu. Then you can conect you VM's to that bridge and manage them on your local network with the same subnet.
nmcli con show # To see you conections
nmcli con add type bridge ifname br0 con-name br0-con # to add a bridge named br0 with conection br0-con
nmcli con add type bridge-slave ifname "you network interface name" master br0 # add your fisical network as  master interface of your br0
nmcli con modify br0-con bridge.stp no # disable stp in the bridge to get fast dhcp config of the 
nmcli con up "you bridge-slave conection"  # bring bridge slave conection up
nmcli con delete "The defaul fisical conection" # crean the other conection
