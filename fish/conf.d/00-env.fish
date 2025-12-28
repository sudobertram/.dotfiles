# ENV VARS

# Disable greeting
set -g fish_greeting

# Editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# UV
fish_add_path $HOME/.local/bin
