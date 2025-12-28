#!/usr/bin/env bash

set -e

echo "🚀 Setting up dotfiles..."

# Install tools
echo "📦 Installing tools via Homebrew..."
brew install fish alacritty tmux neovim fzf ripgrep eza bat fd zoxide starship lazygit gh delta uv ruff litecli pgcli
brew install --cask font-jetbrains-mono-nerd-font

# Create config directories
mkdir -p ~/.config/{fish,alacritty,nvim}

# Create symlinks
echo "🔗 Creating symlinks..."
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/fish/conf.d ~/.config/fish/conf.d
ln -sf ~/dotfiles/fish/functions ~/.config/fish/functions
ln -sf ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# Set Fish as default shell
echo "🐠 Setting Fish as default shell..."
if ! grep -q "$(which fish)" /etc/shells; then
    echo "$(which fish)" | sudo tee -a /etc/shells
fi
chsh -s "$(which fish)"

echo "✅ Done! Restart your terminal and open Alacritty."
echo ""
echo "⚠️  Don't forget to update Git config with your name and email:"
echo "    nvim ~/dotfiles/git/gitconfig"
