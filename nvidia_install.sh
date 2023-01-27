# Ativar o multilib no pacman /etc/pacman.conf
# update
sudo pacman -Syyu
# hardware detect an install
sudo pacman -S hwdetect
sudo hwdetect --show-modules

# Instalar os drivers
sudo pacman -S nvidia nvidia-utils nvidia-settings xorg-server-devel opencl-nvidia
# initcpip ??
# nvidia hooks ??
# Bloquear os drivers NVIDIA opensource
# sudo vim /usr/lib/modprobe.d/nvidia.conf     1-blacklist nouveau
# sudo vim /etc/x11/xorg.conf.d/10-nvidia

