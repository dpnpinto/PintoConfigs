# Easy way how to roll back a package with bug's in Arch

## By https://dpnpinto.github.io

- Uninstall the one that give you problems **sudo pacman -S package_name**
- Install the older version from Arch Archives https://archive.archlinux.org
- Ignore the update of that package until they resolve the problem:
  - In the **pacman.conf** put the package in the **IgnorePkg = Package_name**

That's it have fun
