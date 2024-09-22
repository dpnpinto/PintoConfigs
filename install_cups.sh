

# install cups
sudo pacman -S cups cups-pdf
# I like it instaled by socket to only run when i need it then
sudo systemctl enable cups.socket
sudo systemctl start cups.socket

