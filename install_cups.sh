

# install cups
sudo pacman -S cups cups-pdf
# add current user to lp (local print) group
sudo usermod -aG lp $USER
# I like it instaled by socket to only run when i need it then
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
# Install a visual configuration of the printer
sudo pacman -S system-conmfig-printer
