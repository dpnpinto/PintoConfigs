# Install Wayland in Arch Linux
## Install Wayland
- Verify if it is instaled pacman -Qi wayland
- If not then install wayland sudo pacman -S --needed wayland
## Install components
- xorg-xwayland: For running xclients under Wayland 
- xorg-xlsclients: List client applications running on a display (optional)
- qt5-wayland: Qt APIs for Wayland
- glfw-wayland: GUI app dev packages for Wayland
- sudo pacman -S --needed xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland
## varibles and other software
- Firefox and Chromium: pacman -S --needed firefox chromium
- For firefox run  in waylan: /etc/environment and put this variable MOZ_ENABLE_WAYLAND=1
- for NVIDIA this variables must be set: GBM_BACKEND=nvidia-drm __GLX_VENDOR_LIBRARY_NAME=nvidia
