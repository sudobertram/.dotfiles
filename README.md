# 🐠 Dotfiles — Developer Environment for macOS

Minimalist and productive environment for Python development.

## 📦 What's Installed

### Core Tools
- **Alacritty** — fast GPU-accelerated terminal
- **Fish** — smart shell with autocompletion
- **Starship** — beautiful customizable prompt
- **Tmux** — terminal multiplexer
- **Neovim** — modern text editor

### Utilities
- **fzf** — fuzzy finder
- **ripgrep** — fast file search
- **eza** — improved ls with icons
- **bat** — cat with syntax highlighting
- **fd** — fast file finder
- **zoxide** — smart cd
- **delta** — beautiful git diffs
- **lazygit** — visual git UI

### Python Tools
- **uv** — fast package manager
- **ruff** — linter/formatter

### Database
- **litecli** — SQLite CLI
- **pgcli** — PostgreSQL CLI

---

## 🚀 Quick Start

### Installation on New Machine

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Clone dotfiles
git clone https://github.com/sudobertram/.dotfiles.git ~/dotfiles

# 3. Install all tools
cd ~/dotfiles
brew install fish alacritty tmux neovim fzf ripgrep eza bat fd zoxide starship lazygit gh delta uv ruff litecli pgcli

# 4. Install fonts
brew install --cask font-jetbrains-mono-nerd-font

# 5. Create symlinks
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/fish/conf.d ~/.config/fish/conf.d
ln -sf ~/dotfiles/fish/functions ~/.config/fish/functions
ln -sf ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# 6. Set Fish as default shell
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"

# 7. Update Git config with your details
nvim ~/dotfiles/git/gitconfig
# Change: name = Your Name
#         email = your.email@example.com
```

---

## ⌨️ Hotkeys & Commands

### Alacritty

| Command | Action |
|---------|--------|
| `Cmd + N` | New window |
| `Cmd + W` | Close window |
| `Cmd + +` | Increase font size |
| `Cmd + -` | Decrease font size |
| `Cmd + 0` | Reset font size |
| `Cmd + K` | Clear screen |
| `Cmd + V` | Paste |
| `Cmd + C` | Copy |

**Change theme:**
```bash
alacritty-theme               # List available themes
alacritty-theme nord          # Apply Nord theme
alacritty-theme catppuccin-mocha
alacritty-theme tokyo-night
```

Available themes:
- `catppuccin-mocha` (default)
- `nord`
- `tokyo-night`
- `gruvbox-dark`
- `dracula`

---

### Fish Shell

#### Aliases

**Navigation:**
```bash
..          # cd ..
...         # cd ../..
....        # cd ../../..
```

**Enhanced commands:**
```bash
ls          # eza with icons
ll          # long list with git status
la          # all files
tree        # tree view
cat         # bat with syntax highlighting
grep        # ripgrep
```

**Git:**
```bash
g           # git
gs          # git status
ga          # git add
gc          # git commit
gp          # git push
gl          # git pull
lg          # lazygit
```

**Python:**
```bash
py          # python
pm          # uv (package manager)
```

**Editor:**
```bash
v           # nvim
vim         # nvim
```

**Utilities:**
```bash
c           # clear
q           # exit
wcl         # wc -l
h           # head
t           # tail
```

**Navigation:**
```bash
cd project  # Smart cd with zoxide (jump to frequently used dirs)
z project   # Same as cd (zoxide alias)
```

#### Functions

```bash
mkcd my-folder              # Create directory and cd into it
vf                          # Fuzzy find and open file in nvim
pyproject my-app            # Create Python project with uv
alacritty-theme nord        # Change Alacritty theme
```

#### Key bindings

| Hotkey | Action |
|--------|--------|
| `Ctrl + R` | Search command history (fzf) |
| `→` | Accept autocomplete suggestion |
| `Tab` | Cycle through completions |

---

### Tmux

**Start tmux:**
```bash
tmux                    # New session
tmux new -s name        # New session with name
tmux attach -t name     # Attach to session
tmux ls                 # List sessions
```

#### Hotkeys (Prefix: `Ctrl + a`)

**Windows & Panes:**

| Hotkey | Action |
|--------|--------|
| `Ctrl + a` `\|` | Vertical split |
| `Ctrl + a` `-` | Horizontal split |
| `Ctrl + a` `h/j/k/l` | Navigate between panes (vim-style) |
| `Ctrl + a` `c` | New window |
| `Ctrl + a` `n` | Next window |
| `Ctrl + a` `p` | Previous window |
| `Ctrl + a` `0-9` | Jump to window N |
| `Ctrl + a` `x` | Close pane |
| `Ctrl + a` `d` | Detach from session |

**Other:**

| Hotkey | Action |
|--------|--------|
| `Ctrl + a` `r` | Reload config |
| `Ctrl + a` `[` | Copy mode (vim navigation) |

**Copy mode (after `Ctrl + a` `[`):**
- `v` — start selection
- `y` — copy selection
- `q` — quit copy mode

---

### Neovim

**Start:**
```bash
nvim file.py            # Edit file
v file.py               # Same (alias)
vf                      # Fuzzy find and open file
```

#### Hotkeys

**Basic:**

| Hotkey | Action |
|--------|--------|
| `Space + w` | Save file |
| `Space + q` | Quit |
| `:q!` | Quit without saving |

**Navigation:**

| Hotkey | Action |
|--------|--------|
| `h/j/k/l` | Left/Down/Up/Right |
| `w` | Next word |
| `b` | Previous word |
| `gg` | Top of file |
| `G` | Bottom of file |
| `0` | Start of line |
| `$` | End of line |

**Editing:**

| Hotkey | Action |
|--------|--------|
| `i` | Insert mode |
| `a` | Append mode |
| `o` | New line below |
| `O` | New line above |
| `Esc` | Normal mode |
| `dd` | Delete line |
| `yy` | Copy line |
| `p` | Paste |
| `u` | Undo |
| `Ctrl + r` | Redo |

**Comments:**

| Hotkey | Action |
|--------|--------|
| `gcc` | Comment/uncomment line |
| `gc` (visual mode) | Comment selection |

**Windows:**

| Hotkey | Action |
|--------|--------|
| `Ctrl + h/j/k/l` | Navigate between splits |
| `:split` | Horizontal split |
| `:vsplit` | Vertical split |

---

### Git

#### Aliases

```bash
git st              # status
git co              # checkout
git br              # branch
git ci              # commit
git lg              # beautiful log
git amend           # amend last commit
git undo            # undo last commit (keep changes)
```

#### Lazygit

```bash
lg                  # Launch lazygit
```

**Lazygit hotkeys:**
- `Space` — Stage/unstage file
- `c` — Commit
- `P` — Push
- `p` — Pull
- `Enter` — View diff
- `Tab` — Switch between panels
- `?` — Help
- `q` — Quit

---

## 📁 Structure

```
dotfiles/
├── alacritty/
│   ├── alacritty.toml          # Main config
│   └── themes/                 # Color themes
├── fish/
│   ├── config.fish             # Main config (minimal)
│   ├── conf.d/
│   │   ├── 00-env.fish        # Environment variables
│   │   ├── 01-aliases.fish    # All aliases
│   │   └── 02-tools.fish      # Tool initialization
│   └── functions/              # Custom functions
├── nvim/
│   └── init.lua                # Neovim config
├── tmux/
│   └── tmux.conf               # Tmux config
├── git/
│   └── gitconfig               # Git config
├── starship/
│   └── starship.toml           # Prompt config
└── README.md
```

---

## 🎨 Customization

### Change Alacritty Theme

```bash
alacritty-theme                     # List themes
alacritty-theme catppuccin-mocha    # Apply theme
```

### Add New Fish Alias

Edit `~/dotfiles/fish/conf.d/01-aliases.fish`:
```fish
alias myalias "command"
```

Reload:
```bash
source ~/.config/fish/config.fish
```

### Add New Fish Function

Create file `~/dotfiles/fish/functions/myfunction.fish`:
```fish
function myfunction -d "Description"
    # Your code here
end
```

### Change Neovim Theme

Edit `~/dotfiles/nvim/init.lua` and change `flavour`:
```lua
flavour = "mocha"  -- latte, frappe, macchiato, mocha
```

---

## 🔄 Sync Changes

After modifying configs:

```bash
cd ~/dotfiles
git add .
git commit -m "Update config"
git push
```

---

## 💡 Tips

### Python Development

**Create new project:**
```bash
pyproject my-app
cd my-app
# Project structure is ready with .venv, .gitignore, git
```

**Install dependencies:**
```bash
uv add django fastapi sqlalchemy
```

**Run code:**
```bash
uv run python main.py
```

### Quick File Search

```bash
vf              # Fuzzy find files with preview
```

### Database Work

```bash
litecli db.sqlite           # SQLite with autocomplete
pgcli postgresql://...      # PostgreSQL with autocomplete
```

---

## 🆘 Troubleshooting

### Fonts not displaying correctly

Make sure you're using a Nerd Font in Alacritty config:
```toml
[font.normal]
family = "JetBrainsMono Nerd Font"
```

### Fish not default shell

```bash
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"
```

### Neovim plugins not loading

```bash
# Reinstall lazy.nvim
rm -rf ~/.local/share/nvim
nvim
```

### Tmux prefix not working

Make sure you're pressing `Ctrl + a` then the command key (not simultaneously).

---

## 📚 Resources

- [Fish Documentation](https://fishshell.com/docs/current/)
- [Tmux Cheat Sheet](https://tmuxcheatsheet.com/)
- [Neovim Documentation](https://neovim.io/doc/)
- [Starship Configuration](https://starship.rs/config/)

---

## 📝 License

MIT License - feel free to use and modify!
