1. install git, add ssh key
2. pull and link configurations
  * ~/.config/nvim
    * coc-settings.json
    * init.vim
  * ~/.config/i3
    link from config to i3_config
  * ~/
    * .zshrc
    * .tmux.conf
3. change sources of aur and pip
4. install necessary package:
  * nvim
  * oh-my-zsh
  * tmux
  * i3
5. intall pyenv nodejs and r
6.set hwclock as local time:
sudo timedatectl set-local-rtc 1
7. set data analysis environment:
  * run "sudo pacman -S tk" before install python virtualenv and matplotlib for
      tk backend of ploting
