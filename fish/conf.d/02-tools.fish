# Starship prompt
starship init fish | source

# Transient prompt
function starship_transient_prompt_func
    starship module character
end
enable_transience

# Zoxide
zoxide init fish | source

# fzf
fzf --fish | source
