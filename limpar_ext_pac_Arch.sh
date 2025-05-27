#!/bin/bash
#Limpar depndenecias que não estão em utilização pelo Arch Linux
sudo pacman -Rns $(pacman -Qdtq)
# pacman -Qdtq todos os pacotes de dependencias que não estão ligados.
