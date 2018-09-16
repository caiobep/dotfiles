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

  echo
}


check_installation() {
  echo
  echo "Checking your $1 installation"
  if ! [-x "$(command -v $1)" ]; then
    prompt_install $1
  else
     echo "[ok] $1 installation"
  fi
}

check_default_shell() {
    if [ -z "${SHELL##*zsh*}" ]; then
        echo "Your default shell is ZSH."
    else
        echo -n "Default shell is not zsh. Do you want to chsh -s \$(witch zsh)? (y/n)"
        old_stty_cfg=$(stty -g)
        stty raw -echo
        answer = $( while ! head -c 1 | grep -i '[ny]'; do true; done)
        stty $old_stty_cfg && echo
        if echo "$answer" | grep -iq "^y"; then
            chsh -s $(which zsh)
        else
            echo "Could not set zsh as your default shell"
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

    check_installation zsh
    check_installation vim
    check_installation tmux

    check_default_shell

    echo
    echo -n "Would you like to backup your current dotfiles? (y/n) "
    old_stty_cfg=$(stty -g)
    stty raw -echo
    answer=$(while ! head -c 1 | grep -i '[ny]'; do true; done)
    stty $old_stty_cfg
    if echo "$answer" | grep -iq "^y"; then
        mv "~/.zshrc ~/.zshrc.old"
        mv "~/.tmux.conf ~/.tmux.conf.old"
        mv "~/.vimrc ~/.vimrc.old"
    fi

    printf "source '$HOME/.dotfiles/zsh/zshrc_manager.sh'" > ~/.zshrc
    printf "so $HOME/.dotfiles/vim/vimrc.vim" > ~/.vimrc
    printf "source-file $HOME/.dotfiles/tmux/tmux.conf" > ~/.tmux.conf

    echo
    echo "Please log out and log back in to reload your default shell"
}

main

