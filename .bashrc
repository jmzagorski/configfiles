#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias pac='sudo pacman -S'
alias svim='sudo -E vim'

function aurm() {
  if [ ! -d "~/builds/$1" ]; then
    mkdir -p ~/builds/$1
  fi

  git clone https://aur.archlinux.org/$1.git ~/builds/$1
  cd ~/builds/$1
  if [[ "${2}" = "make" ]]; then
    echo "Making package";
    makepkg -si
  fi
}

export -f aurm

shopt -s dotglob

GITHUB="https://github.com/jmzagorski"

