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
