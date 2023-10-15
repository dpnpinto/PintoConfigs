# some ramdom stuff

## PT keys
loadkeys pt-latin1

## Networking

### Bridge device to conect  VM's to my machine

load kernel modules for tun and tap devices

modprobe tun tap

create bridge

ip link add bridge_xpro type bridge

create tap device

ip tuntap add dev tap_xpto mode tap

add device to bridge

sudo ip link set dev vnet_xpto master br0_xpto

set device up an down

ip link set device device_xpto up
ip link set device device_xpto down

add a route to routing table table

ip route add 10.0.0.0/8 via 192.168.1.1
ip route  10.0.0.0/8 via 192.168.1.1

see routing table

ip route show
ip r

mange ip off a device

ip addr add 192.168.1.100/24 dev eth0
ip addr del 192.168.1.100/24 dev eth0

show information of interfaces

ip addr show
ip a
