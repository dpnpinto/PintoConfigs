# Instalar um ambiente gráfico minimalista tanto no VOId Linux como no Arch
## Utilizo o Arch Linux para plataformas X64 mas para 32bit em arm utilizo o Void Linux

##Instalar o Xorg

sudo xbps-install -S xorg xinit
sudo pacman -S xorg xinit

## Instalar a ferramentas para descarregar e compliar as ferramentas SuckLess

sudo xbps-install -S git make
sudo pacman -S git make

## Instalar as dependencias

sudo xbps-install -S base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel
sudo pacman -S base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel

## Descarregar o software Suckless

### Do Git - preferivel

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu

### Do site, recorrendo a instlação do firefox ou utilizando o curl

Se intalar firefox efetua xinit /bin/firefox
curl -O https://dl.suckless.org/dwm/dwm-XXX.tar.gz
curl -O https://dl.suckless.org/st/st-XXX.tar.gz
curl -O https://dl.suckless.org/tools/dmenu-XXX.tar.gz
Nota: substituir o XXX pela versão disponivel online

### Só mais umas coisas para ficar ao meu gosto

Instalar o rofi, o picom e o nitrogen

sudo pacman -S rofi picom nitrogen
sudo xbps-install -S rofi picom nitrogen

https://lecorbeausvault.wordpress.com/2020/04/08/install-guide-suckless-dwm-with-st-and-dmenu/
