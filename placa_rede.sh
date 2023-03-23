# dispositivos pci
lspci -v | less 
# detalhe da placa d erede
sudo dmesg | grep e1000
# endereço da placa de rede
ip addr
# ifconfig foi descontinuado pode ser instalado pacman -S net-tools (não aconselhavel por estar descontinuado)
# listar as interfaces do meu sistema
ls /sys/class/net
# endereço mac da minha interface
cat /sys/class/net/"nome da interface"/address
#todas as defenições
ls /sys/class/net/"nome da interface" 
# ativar ou desativar interface
ip link set "nome da interface" down/up
# pedir novo dhcp
dhcpcd "nome da inerface"
# Ativar/desativar o serviço de shcp no arch
sudo  systemctl enable/disable dhcpcd.service
# utilização do net clontrol "netctl" para criação de perfis
# os perfis ficam guardados /etc/netctl
# alterar hostname /etc/hostname
sudo echo "novo_nome" > /etc/hostname
# configuração mnual de DNS
vi/m /etc/resolv.conf
