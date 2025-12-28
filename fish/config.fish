# Fish Shell Configuration
# Модульная структура: conf.d/ и functions/

# Homebrew (обязательно в начале)
if status is-interactive
    eval "$(/opt/homebrew/bin/brew shellenv)"
end
