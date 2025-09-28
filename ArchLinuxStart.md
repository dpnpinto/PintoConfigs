
# RFM :)

## Late userspace
The startup of late userspace is executed by the init process. Arch officially uses systemd which is built on the concept of units and services, but the functionality described here largely overlaps with other init systems.

## getty
The init process calls getty once for each virtual terminal (typically six of them). getty initializes each terminal and protects it from unauthorized access. When the username and password are provided, getty checks them against /etc/passwd and /etc/shadow, then calls login(1).

## Login
The login program begins a session for the user by setting environment variables and starting the user's shell, based on /etc/passwd. The login program displays the contents of /etc/motd (message of the day) after a successful login, just before it executes the login shell. It is a good place to display your Terms of Service to remind users of your local policies or anything you wish to tell them.

## Shell
Once the user's shell is started, it will typically run a runtime configuration file, such as bashrc, before presenting a prompt to the user. If the account is configured to start X at login, the runtime configuration file will call startx or xinit. Jump to #Graphical session (Xorg) for the end.