# Dotfiles

Minimalist developer environment for macOS.

## What's included

- **Alacritty** — fast terminal
- **Fish** — smart shell with autocompletion
- **Starship** — beautiful prompt
- **Tmux** — terminal multiplexer
- **Neovim** — text editor
- **Tools:** fzf, ripgrep, eza, bat, fd, zoxide, delta, lazygit
- **Python:** uv, ruff
- **Database:** litecli, pgcli

## Installation
```bash
# Clone
git clone https://github.com/sudobertram/.dotfiles.git ~/dotfiles

# Run setup
cd ~/dotfiles
./setup.sh

# Update Git config
nvim ~/dotfiles/git/gitconfig
# Change: name and email
```

## Quick reference

### Fish aliases
- `ll` — list files with icons
- `v` — nvim
- `lg` — lazygit
- `z <dir>` — smart cd

### Fish functions
- `vf` — fuzzy find and open in nvim
- `mkcd <dir>` — create dir and cd
- `pyproject <name>` — create Python project
- `alacritty-theme <name>` — change theme

### Tmux (prefix: `Ctrl+a`)
- `|` — vertical split
- `-` — horizontal split
- `h/j/k/l` — navigate panes
- `c` — new window
- `d` — detach

### Neovim
- `Space+w` — save
- `Space+q` — quit
- `gcc` — comment line

## Themes
```bash
alacritty-theme            # list
alacritty-theme nord       # apply
```

Available: catppuccin-mocha, nord, tokyo-night, gruvbox-dark, dracula

## Structure
```
dotfiles/
├── alacritty/        # Terminal config + themes
├── fish/             # Shell config (modular)
├── nvim/             # Editor config
├── tmux/             # Multiplexer config
├── git/              # Git config
├── starship/         # Prompt config
└── setup.sh          # Installation script
```
