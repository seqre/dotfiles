#!/usr/bin/env bash

if [[ -f "/usr/bin/yay" ]]; then
  echo "yay is already installed"
  exit 0
fi

sudo pacman -S --needed --noconfirm base-devel go
dir=$(mktemp -d)
git clone https://aur.archlinux.org/yay.git $dir
cd $dir
makepkg -si

if [[ -f "usr/bin/yay" ]]; then
  echo "yay installed correctly"
  yay -Sy --noconfirm yay
fi
