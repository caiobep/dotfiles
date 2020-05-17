prompt_install() {
  echo -n "$1 installation was not found. Do you want to install it? (y/n)"
  old_stty_cfg=$(stty -g)
  stty raw -echo
  answer=$(while ! head -c 1 | grep -i '[ny]'; do true; done)
  stty $old_stty_cfg && echo
  if echo "$answer" | grep -iq "^y"; then

      if [ -x "$(command -v apt-get)" ]; then
          sudo apt-get install $1 -y

      elif [ -x "$(command -v brew)" ]; then
          brew install $1

      elif [ -x "$(command -v pkg)" ]; then
          sudo pkg install $1

      elif [ -x "$(command -v pacman)" ]; then
          sudo pacman -S $1

      else
          echo "Could not find your package manager. Please install $1 manually."
      fi
  fi
}


check_installation() {
  echo "Checking your $1 installation"
  if ! [ -x "$(command -v $1)" ]; then
    prompt_install $1
  else
     tput setaf 2; echo  "[ok] $1 installation"
     tput setaf 7;
  fi
}

check_default_shell() {
    echo
    if [ -z "${SHELL##*zsh*}" ] ;then
        echo "Your default shell is ZSH."
    else
        echo "Default shell is not zsh. Do you want to set it as default now? (y/n)"
        old_stty_cfg=$(stty -g)
        stty raw -echo
        answer=$(while ! head -c 1 | grep -i '[ny]'; do true; done)
        stty $old_stty_cfg && echo
        if echo "$answer" | grep -iq "^y"; then
            chsh -s $(which zsh)
            echo "Please log out and log back in to reload your default shell"
        else
            echo "Skipping Setting Default shell..."
        fi
    fi
}

backup_dotfiles() {
    echo
    echo "Would you like to backup your current dotfiles? (y/n) "
    old_stty_cfg=$(stty -g)
    stty raw -echo
    answer=$(while ! head -c 1 | grep -i '[ny]'; do true; done)
    stty $old_stty_cfg
    if echo "$answer" | grep -iq "^y"; then
        mv ~/.zshrc ~/.zshrc.old
        mv ~/.tmux.conf ~/.tmux.conf.old
        mv ~/.vimrc ~/.vimrc.old
    else
        echo "Skpping backup..."
    fi
}

install_thinkvim() {
  git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
}

change_default_configuration_source() {
    printf "export MACHINE_NAME="$MACHINE_NAME" \n source '$HOME/.dotfiles/zsh/zshrc_manager.sh'" > ~/.zshrc
    printf "so $HOME/.dotfiles/vim/vimrc.vim" > ~/.vimrc
    printf "source-file $HOME/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf
}

install_homebrew_when_host_is_macos() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
      if ! [ -x "$(command -v $1)" ]; then
        echo "[!] No installation of Homebrew was found"
        echo "[+] Installing Homebrew"

        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      else
        echo "[!] Found Homebrew Installation at $(which brew)"
      fi
    fi
}

main() {
    echo "=====Welcome to my .terminal======="
    echo "This script will do the following:"
    echo " 1. Check if you have zsh, tmux and vim installed"
    echo " 2. Help you install it if you don't"
    echo " 3. Check your default shell"
    echo " 4. Try to change your default shell"
    echo

    echo "Do you want to continue? (y/n)"
    old_stty_cfg=$(stty -g)
    stty raw -echo
    answer=$(while ! head -c 1 | grep -i '[ny]'; do true; done)
    stty $old_stty_cfg

    if echo "$answer" | grep -iq "^y"; then
        echo
    else
        echo "Quitting..."
        exit 0
    fi


    echo "[+] What's your machine name? "
    read MACHINE_NAME

    install_homebrew_when_host_is_macos


    check_installation zsh
    check_installation vim
    check_installation tmux
    check_installation git

    install_thinkvim

    check_default_shell

    backup_dotfiles

    change_default_configuration_source
}

main

