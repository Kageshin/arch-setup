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

``` sh
curl -O https://raw.githubusercontent.com/Kageshin/arch-setup/refs/heads/main/bootstrap.sh | bash
```

## todo

- Ansible aus dem Home Ordner verschieben
- zsh Shell mit Plugin Manager
  - Oh my Posh
- nvim
  - Theme Installieren
  - Telescope Theme Selector (NVChad)
  - LSPs Konfigs für weitere Sprachen
  - Markdown Unterstützung Ausprobieren
  - Personal Knowlege System (PKS) Unterstützung
- RSS Fead for Arch News
  - Akregator from KDE-Plasma
  - Configuration von Akregator zu Repo hinzufügen
- Syncthing einrichten
- Desktop Umgebung installieren
  - KDE Standartanwendungs config zu repo hinzufügen
- Alltagsprogramme + Netzwerktools
- Firewall einrichten

## Configuierte Dienste

- [zsh](#zsh)
- [nvim](#nvim)
- [git](#git)
- [pacman](#pacman)
- [GRUB](#grub)
- [snapper](#snapper)
- [grub-btrfs](#grub-btrfs)
- [yay](#yay)
- [Language Servers](#lsps)
- [Alacritty](#alacitty)

### zsh

Shell Environment

- Auslagerung von Datein in `.config/zsh`
- Umgebungsvariablen für XDG-Standard
- Pakagemanager zinit
- Aliase in Eigener Datei: `.config/shell/alias`

### nvim

Standart Editor + Entwiklungsumgebung

- Paketmanager: lazy.nvim
- Highlighting: treesitter
- Besseres Undo: undo-tree
- Git Integration: vim-fugitive
- LSP Konfiguration mithilfe der Features aus nvim Version 0.11

### git

Versions Kontrolle

- Config für Nutername + Email
- Default Editor (nvim)
- Default Branch (main)

### pacman

Standart Paket Manager Optionen

- Aktiviere Farben
- Paketliste als Tabelle
- Beschrenke Gleichzeitige Downloads auf 5

### GRUB

- Aktiviere starfield Theme

### snapper

Regelmaßige Snapshots + Automatische bei Systemupdate / upgrade.

- Installiere Pakete für Snapper
- Erstelle Configs für `/` und `/home` + `.snapshots` Ordner

### grub-btrfs

Snapshots von snapper automatische im GRUB Bootmenü anzeigen + booten

- Installiere nötige Pakete
- Ermöglicht booten in Read-Only Snapshots mithilfe von `grub-btrfs-overlayfs` in mkinitcpio.conf
  - todo: Hooks nicht Hardcoden
- Startet Systemd-Service um Automatisch neue Snapshots zum Bootmenü hinzuzufügen

### yay

Paket Manager für AUR

- Klont, Build, Install den yay Paket Manager
- Entfernt das Gitrepo im Anschluss

### LSPs

Installiert Language Server welche zum Beispiel in nvim genutz werden können.

Sprachen:

- lua
- ansible (+lint)
- bash

### Alacritty

Terminal Emulator, configured using `~/.config/alacritty/alacritty.toml`.
Added GitSubmodule for Themes.
Installed ttf-jetbrains-nerd-mono font.
