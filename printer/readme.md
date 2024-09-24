# just install cups 
- sudo pacman -S cups
# add current user to lp (local print) group
- sudo usermod -aG lp $USER
# I like it instaled by socket to only run when i need it then
- sudo systemctl enable cups.socket
- sudo systemctl start cups.socket
# Install a GUI for the printer management
- sudo pacman -S system-config-printer
# I use an OKI then I have to Install the drivers from aur https://aur.archlinux.org/foo2zjs-nightly.git
- git clone https://aur.archlinux.org/foo2zjs-nightly.git
- cd foo2zjs-nightly
- makepkg (install dependent programs if needed)
- sudo pacman -U "the result file"
# Other printer or problems just read Arch Wiki
- [CUPS Arch Wiki](https://wiki.archlinux.org/title/CUPS)
- [CUPS Printers Specific Problems](https://wiki.archlinux.org/title/CUPS/Printer-specific_problems)
