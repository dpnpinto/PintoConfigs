# How to Install Arch - After boot from the ISO

## Colocar o teclado em PT de Portugal
loadkeys pt-latin1 
nota: o traço "-" no teclado em ingles é na tecla do apóstrofo "'"

## Ver se tem internet
ping www.google.com

## se pretender utilizar o WIFI utilizar o iwctl
iwctl
1º device list (para saber o nome do dispositivo)
2º station nomedispositivo scan (ver as redes disponiveis)
3º station nomedodispositivo get-network (listar as redes)
4º station nomedodispositivo connect nomedarede (por fim paraq se ligar à rede WIFI)

## Configuração do disco
fdisk -l (listar todos os discos disponiveis)
fdisk -l /dev/discopretendido (ver todas as partições no disco)
cfdisk /dev/discopretendido (criar as partições pretendidas)
Recomenda-se o formato de tabela GPT

Exemplo:
/dev/sda1 (100MB para o /boot/efi)
/dev/sda2 (2GB para swap)
/dev/sda3 (30GB para /)

/dev/sda4 (todo o resto para o /home)

Defenir os tipos das partições em type

Para o GRUP - EFI System
Swap - Linux Swap
Restantes partições - Linux filesystem

## Formatar partições
