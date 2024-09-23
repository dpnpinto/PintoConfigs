

# install cups
sudo pacman -S cups
# add current user to lp (local print) group
sudo usermod -aG lp $USER
# I like it instaled by socket to only run when i need it then
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
# Install a GUI for the printer management
sudo pacman -S system-config-printer
