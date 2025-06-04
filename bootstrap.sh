#!/bin/bash
set -e

echo "[1/5] Pacman vorbereiten..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed git base-devel ansible stow --noconfirm

echo "[2/5] Projects Ordern erstellen..."
mkdir -p ~/Projects

echo "[2/5] Repo klonen..."
#git clone https://github.com/.... ~/Projects/arch-setup

echo "[4/5] Dotfiles vorbereiten..."
cd ~/Projects/arch-setup/dotfiles
stow *

echo "[5/5] Ansible ausführen..."
cd ~/Projects/arch-setup/ansible 
ansible-playbook playbook.yml -K
