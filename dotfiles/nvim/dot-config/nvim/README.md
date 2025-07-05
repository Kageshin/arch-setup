# Neovim Config

Dokument my current Neovim Config

## The Plan

- [X] lazy.nvim (Plugin Manager)
- [X] kanagawa.nvim (Colorscheme)
- [X] mini.statusline (Statusline)
- [X] oil.nvim (File Browser)
- [X] Basic Vim Options
- [X] editorconfig (Indentation Setup)
- [X] treesitter.nvim (Syntax Highlighting)
- [X] treesitter-textobjects (Add Custom Textobjects)
- [X] fzflua (Fuzzy File Finder)
- [X] project.nvim (Find Project Root Directories)
- [X] nvim-lspconfig (Default LSP Configurations)
- [X] Better input UI
- [X] Conform Nvim (Autoformatters Config)
- [X] blink-cmp (Autocompletions)
- [X] iwe (Markdown LSP + Editing)
- [X] undotree (Better Undo)

### lazy.nvim

Source: [Link](https://lazy.folke.io/installation)

Description: Lazy Loding Plugin Manager for neovim

### kanagawa

Source: [Link](https://github.com/rebelot/kanagawa.nvim)

Description: Compilable Colorscheme for neovimAddon: Set VSCode colorscheme for Markdown: [Link](https://github.com/rebelot/kanagawa.nvim/issues/207)

### mini.statusline

Source: [Link](https://github.com/echasnovski/mini.statusline)

Description: Better Statusline for neovim. Part of mini.nvim Selection of Plugins.

### oil.nvim

Source: [Link](https://github.com/stevearc/oil.nvim)

Description: Better File Explorer for neovimKeybindings:Normal:"-": Open Floating Oil Window

### Basic Options

Set some basic options using the `options.lua` file.

### editorconfig

Nvim nativly supports `.editorconfig` Files.

### treesitter.nvim

Source: [Link](https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md)

Description: High performance, incremental Parser. Used to Highlight Syntax.Keybindings:Normal:"<Enter>": Select Node"<Enter>": Select more"<Backspace>": Select less

### treesitter textobjects

Source: [Link](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)

Description: Add More Textobjects to treesitter for selection, swap, movement and deletion

### fzflua

Source: [Link](https://github.com/ibhagwan/fzf-lua)

Description: Wrapper for fzf and ripgrep in neovimAlternative to telescope.nvim

### project.nvim

Source: [Link](https://github.com/ahmedkhalf/project.nvim)

Description: Find Project Root Directory

### nvim-lspconfig

Source: [Link](https://github.com/neovim/nvim-lspconfig)

Description: Default LSP Configuration (:help lspconfig-all)Override Default Configs using in `/after/lsp` Folder.

### snacks.nvim - input

Source: [Link](https://github.com/folke/snacks.nvim/blob/main/docs/input.md)

Description: Better UI Input, Example LSP Rename

### conform.nvim

Source: [Link](https://github.com/stevearc/conform.nvim)

Description: Configure Autoformatting

### blink.cmp

Source: [Link](https://github.com/Saghen/blink.cmp)

Description: AutocompletionCan add other Autocompletions as dependencies. It is possible to enable the completions only for specific file types.

### iwe

Source: [Link](https://github.com/iwe-org/iwe/wiki)

Description: open-source, local-first, markdown-based note-taking tool. It serves as a personal knowledge management (PKM) solution designed for developers.

### undotree

Source: [Link](https://github.com/mbbill/undotree/)

Description: Better undo, saves undo history as a tree which can be navigated.
