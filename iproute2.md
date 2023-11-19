# iproute2 dentered in OSI model

* By dpnpinto.github.io
  
## Overview of iproute2

## OSI Model layers

***************
* Aplication  * LAYER 7
***************
* Presentation* LAYER 6
***************
* Session     * LAYER 5
***************
* Transport   * LAYER 4
***************
* Network     * LAYER 3 * Routing, IPv4, IPv6
***************
* Data Link   * LAYER 2 * Links, VLAN, VXLAN, bridges, ARP, MAC, NDP, TUN, TAP
***************
* Physical    * LAYER 1 * 
***************

# Layer 1 stuff that you can do with iproute2 

# Layer 2 stuff that you can do with iproute2

This section describes the management of a network bridge using the ip tool from the iproute2 package, which is required by the base meta package.

Create a new bridge and change its state to up:

- ip link add name bridge_name type bridge
- ip link set dev bridge_name up
To add an interface (e.g. eth1) into the bridge, its state must be up:

- ip link set eth1 up
Adding the interface into the bridge is done by setting its master to bridge_name:

- ip link set eth1 master bridge_name
To show the existing bridges and associated interfaces, use the bridge utility (also part of iproute2). See bridge(8) for details.

- bridge link
This is how to remove an interface from a bridge:

- ip link set eth1 nomaster
The interface will still be up, so you may also want to bring it down:

- ip link set eth1 down
To delete a bridge issue the following command:

- ip link delete bridge_name type bridge
This will automatically remove all interfaces from the bridge. The slave interfaces will still be up, though, so you may also want to bring them down after.


