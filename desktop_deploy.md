1. install git, add ssh key
2. pull and link configurations
  * ~/.config/nvim
    * coc-settings.json
    * init.vim
  * ~/.config/i3
    link from config to i3_config
  * git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks
  * link ~/.i3blocks.conf
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
6. set hwclock as local time:
sudo timedatectl set-local-rtc 1
7. set data analysis environment:
  * run "sudo pacman -S tk" before install python virtualenv and matplotlib for
      tk backend of ploting
8. haskell
    * install ghcup-hs via curl
    * install and set global ghc
    * get ghcide from github and build via stack ( same ghc )
