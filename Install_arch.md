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
