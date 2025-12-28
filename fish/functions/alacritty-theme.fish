function alacritty-theme -d "Переключить тему Alacritty"
    set themes_dir ~/dotfiles/alacritty/themes
    set config_file ~/dotfiles/alacritty/alacritty.toml
    
    if test (count $argv) -eq 0
        echo "Доступные темы:"
        ls $themes_dir | sed 's/.toml//'
        echo ""
        echo "Использование: alacritty-theme <название>"
        return
    end
    
    set theme_file $themes_dir/$argv[1].toml
    
    if not test -f $theme_file
        echo "Тема '$argv[1]' не найдена"
        return 1
    end
    
    # Удаляем старые цвета из конфига
    sed -i '' '/\[colors/,/white = /d' $config_file
    
    # Добавляем новую тему
    cat $theme_file >> $config_file
    
    echo "✓ Тема '$argv[1]' применена. Перезапустите Alacritty."
end
