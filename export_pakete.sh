#!/bin/bash
set -e

echo "[1/1] Installierte Pakete sichern..."
cd ~/Projects/arch-setup
pacman -Qqe > pkglist.txt

