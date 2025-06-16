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
