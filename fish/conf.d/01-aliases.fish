# Навигация
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."

# Улучшенные команды
alias ls "eza --icons --group-directories-first"
alias ll "eza -l --icons --group-directories-first --git"
alias la "eza -la --icons --group-directories-first --git"
alias tree "eza --tree --icons"
alias cat "bat --style=plain --paging=never"
alias grep "rg"

# Git
alias g "git"
alias gs "git status"
alias ga "git add"
alias gc "git commit"
alias gp "git push"
alias gl "git pull"
alias lg "lazygit"

# Python
alias python "python3"
alias py "python3"
alias pm "uv"

# Редактор
alias v "nvim"
alias vim "nvim"

# Утилиты
alias wcl 'wc -l'
alias h 'head'
alias hn 'head -n'
alias t 'tail'
alias tn 'tail -n'
alias c 'clear'
alias q 'exit'

# Zoxide
alias cd "z"
