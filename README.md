# Config files for Bash

This is my `bash` configuration which takes individual configuration files from `dotfiles/.config/bash/`
All the files are loaded from ~/.bashrc.

The individual files are:
-  [apps.sh](./apps.sh)
    - makes aliases of Android Studio, VS Code and Neovim
- [ssh-agent.sh](./ssh-agent.sh)
    - start OpenSSH when I'm signing commits
    - on Omarchy it is started using systemd
- [tab-completion.sh](./tab-completion.sh)
    - sources files from completions/ directory
- [visualstudio.sh](./visualstudio.sh)
    - this is a function which searches for a .sln/.slnx file and opens it with Visual Studio

