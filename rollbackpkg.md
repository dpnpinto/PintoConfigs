# Easy way how to roll back a package with bug's in Arch

## By https://dpnpinto.github.io

- Uninstall the package that give you problems
  - **sudo pacman -R package_name**
- Install the older version from Arch Archives https://archive.archlinux.org
  - **sudo pacman -U Packet_path_to_older_package_name**
- Ignore the update of that package until the problem is solved:
  - In the **pacman.conf** put the package in the **IgnorePkg = Package_name**

That's it have fun
