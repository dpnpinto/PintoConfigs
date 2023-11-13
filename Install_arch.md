8# How to Install Arch - After boot from the ISO

## Colocar o teclado em PT de Portugal

.**loadkeys pt-latin1** 
.nota: o traço "-" no teclado em ingles é na tecla do apóstrofo "'"

## Ver se tem internet

**ping www.google.com**load

## se pretender utilizar o WIFI utilizar o iwctl
**iwctl**
1º device list (para saber o nome do dispositivo)
2º station nomedispositivo scan (ver as redes disponiveis)
3º station nomedodispositivo get-network (listar as redes)
4º station nomedodispositivo connect nomedarede (por fim paraq se ligar à rede WIFI)

## Configuração do disco
**fdisk -l** (listar todos os discos disponiveis)
**fdisk -l /dev/discopretendido** (ver todas as partições no disco)
**cfdisk /dev/discopretendido** (criar as partições pretendidas)
Recomenda-se o formato de tabela **GPT**

Exemplo:
/dev/sda1 (100MB para o /boot e /boot/efi)
/dev/sda2 (2GB para swap)
/dev/sda3 (30GB para /)

/dev/sda4 (todo o resto para o /home)

Defenir os tipos das partições em type

dmesg | grep "EFI v" (verificar se o sistema arrancou com EFI) ls /sys/firmware/efi/efivars (outra forma se não existe não é EFI)

Para o GRUP - EFI System/BIOS boot (conforme o sistema que tem)
Swap - Linux Swap
Restantes partições - Linux filesystem

## Formatar partições

Partição de boot - mkfs.fat -F32 /dev/sda1 (indicar partição selecionada)
Fartição Swap - mkswap /dev/sda2 (indicar a partição selecionada)
PArtições do sistema mkfs.ext4 /dev/sda3 (indicar as partições) 

## Pontos de montagem  do sistema

mount /dev/sda3 /mnt (partição e raiz do sistema)
mkdir /mnt/home  (criar diretorio home)
mkdir /mnt/boot (criar diretorio boot)
mkdir /mnt/boot/efi (criar diretorio UEFI para o caso de utilizar UEFI)
mount /dev/sda1 /mnt/boot (montado a partição boot)
mount /dev/sda1 /mnt/boot/efi (montado a partição UEFI se for utilizar)
swapon /dev/sda2 (Ativando a swap)

## verificar como ficou o sistema de ficheiros

lsblk (caso seja necessário corrigir ou alterar voltar aos pontos anteriores)

## Otimizar os mirrows para descarregar os pacotes

vim /etc/pacman.d/mirrorlist (se não tiver instalado o vim instalar o editor ou utilizar outro)

## Instalar o pacotes base do Arch

pacstrap /mnt base base-devel linux linux-firmware vim dhcpcd

Neste passo, instalaremos o metapacote base e o grupo base-devel, além do kernel Linux padrão do Arch, o firmware para hardware comum, o editor de texto “vim” e o dhcpcd

## Gerar a tabela de FSTAB

Após instalar os pacotes essenciais é necessário gerar a tabela FSTAB, que vai dar a indicação ao sistema onde estão montadas cada uma das partiços.
genfstab -U -p /mnt>>/mnt/etc/fstab
pode depois verificar se a tabela está correta
cat /mnt/etc/fstab

## O sistema está configurado vamos passar para dentro dele

arch-chroot /mnt (tudo o que é feito daqui para a frente é efetuado dentro já do sistema Arch instalado no disco)

## Configurar data e hora do nosso sistema operativo

ln -sf /usr/share/zoneinfo/Região/Cidade /etc/localtime
Zonas em https://gist.github.com/alejzeis

No meu caso
ln -sf /usr/share/zoneinfo/Atlantic/Azores /etc/localtime

Sincronizar o relógio
hwclock --systohc

Conferir se a data ficou correta
date

## Alterar o idioma do sistema

vim /etc/locale.gen ( tirar o # comentário do idioma pretendido pt_PT* )
locale-gen (gerar o local tendo por base o ficheiro locale.gen)
echo KEYMAP=pt-latin1 >> /etc/vconsole.conf (colocar o mapa de teclas correto na configuração da consola)

## Configurações gerais do novo sistema operativo

vim /etc/hostname (colocar na primeira linha o nome do equipamento)
passwd (mudar a palavra passe do utilizador root)

### criar um novo utilizador

useradd -m -g users -G wheel,storage,power -s /bin/bash nomedoutilizador
passwd nomedoutilizador (colocar palavra passe nesse utilizador)

## Instalar pacotes uteis

pacman -S dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog

## Instalar o GRUB (Boot Loader)

dmesg | grep "EFI v" (verificar se o sistema arrancou com EFI)
ls /sys/firmware/efi/efivars (outra forma se não existe não é EFI)

### Se for BIOS

pacman -S grub (instlar o GRUB)
grub-install --target=i386-pc --recheck /dev/sda (instalar o GRUB)
grub-mkconfig -o /boot/grub/grub.cfg (gerar a configuração GRUB)

### Se for UEFI

pacman -S grub efibootmgr (instalar o GRUB e o efibootmgr)
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch_grub --recheck (instalar o GRUB na pasta efi)
grub-mkconfig -o /boot/grub/grub.cfg (gerar a configuração GRUB)



