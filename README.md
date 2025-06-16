# Readme

Meine Konfiguration für Arch Linux, nach manueller Installation des Systems.

## Grundlage für Installation

- 2 Festplatten
    - Platte 1: Partitionen /efi, /boot, /root
    - Platte 2: Partitionen /home
- Partitionen /root & /home
    - Nutzung von LVM auf LUKS
    - Dateisystem btrfs (Snapshots)
- Bootmanager: GRUB

## Anwendung der Konfig

```sh
curl -O https://raw.githubusercontent.com/Kageshin/arch-setup/refs/heads/main/bootstrap.sh | bash
```

## todo

- Ansible aus dem Home Ordner verschieben
- zsh Shell mit Plugin Manager
    - Oh my Posh
- nvim Einrichten (ThePrimeagen: 0 to LSP: Neovim RC From Scrath)
- RSS Fead for Arch News
- Syncthing einrichten
- Desktop Umgebung installieren
    - Wayland anstelle von Xorg, da es sicherer ist
- Alltagsprogramme + Netzwerktools
- Firewall einrichten

## Configuierte Dienste

- [zsh](zsh)
- [nvim](nvim)
- [git](git)
- [pacman](pacman)
- [GRUB](grub)
- [snapper](snapper)
- [grub-btrfs](grub-btrfs)
- [yay](yay)
- [Language Servers](lsps)

### zsh

- Auslagerung von Datein in `.config/zsh`
- Umgebungsvariablen für XDG-Standard
- Pakagemanager zinit
- Aliase in Eigener Datei: `.config/shell/alias`

### nvim
### git
### pacman
### GRUB
### snapper
### grub-btrfs
### yay
### LSPs

