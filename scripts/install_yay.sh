#!/usr/bin/env bash

if [[ -f "/usr/bin/yay" ]]; then
  echo "yay is already installed"
  exit 0
fi

sudo pacman -S --needed base-devel
dir=$(mktemp -d)
git clone https://aur.archlinux.org/yay.git $dir
cd $dir
makepkg -sric

if [[ -f "usr/bin/yay" ]]; then
  echo "yay installed correctly"
  yay -Sy yay
fi
