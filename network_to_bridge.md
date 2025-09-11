## How to create a bridge device
### To see you conections
nmcli con show
### to add a bridge named br0 with conection br0-con
nmcli con add type bridge ifname br0 con-name br0-con 
### add your fisical network as  master interface of your br0
nmcli con add type bridge-slave ifname "you network interface name" master br0 con-name br0-mslave 
### disable stp in the bridge to get fast dhcp config of the 
nmcli con modify br0-con bridge.stp no 
### bring bridge slave conection up
nmcli con up br0-mslave  
### bring bridge conection up
nmcli con up br0-con  
### delete the other conection
nmcli con delete "The defaul fisical conection" 
