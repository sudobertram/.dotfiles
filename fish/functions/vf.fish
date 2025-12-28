function vf -d "Quickly search and open a file"
    set file (fd --type f --hidden --exclude .git | fzf --preview 'bat --color=always {}')
    if test -n "$file"
        nvim $file
    end
end
