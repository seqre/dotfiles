#!/usr/bin/env bash

if [[ -f "/usr/bin/zsh" ]]; then
  echo "zsh is already installed"
  exit 0
fi

sudo pacman -S --needed --noconfirm zsh

if [[ -f "usr/bin/zsh" ]]; then
  echo "zsh installed correctly"
fi
