# Instala software do AUR (Arch Uer Repository)

## Com ajudante de instação AUR (yay) :

- yay -S 'softwarename'

### Nota: para instalar o yay ver ou correr -» https://github.com/dpnpinto/my_configs/install_yay.sh

## Com instalação manual:

- git clone https://aur.archlinux.org/'softwarename'.git
- cd 'softwarename'
- makepkg -si

### Nota: grarantir que tens o base-devel e o git -» sudo pacman -Sy base-devel git
