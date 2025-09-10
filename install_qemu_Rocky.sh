# Some Rocky Linux Stuff
# By https://dpnpinto.github.com
# Install qemu in Rocky Linux
sudo dnf -y install qemu-kvm libvirt virt-install
# COnfirm modules are loaded
lsmod | grep kvm
# Enable service
systemctl enable --now libvirtd
