# 🐠 Dotfiles — Рабочее окружение для macOS

Минималистичное и продуктивное окружение для Python-разработки.

## 📦 Что установлено

### Основные инструменты
- **Alacritty** — быстрый GPU-ускоренный терминал
- **Fish** — умная командная оболочка с автодополнением
- **Starship** — красивый настраиваемый prompt
- **Tmux** — мультиплексор терминала
- **Neovim** — современный текстовый редактор

### Утилиты
- **fzf** — интерактивный поиск
- **ripgrep** — быстрый поиск по файлам
- **eza** — улучшенный ls с иконками
- **bat** — cat с подсветкой синтаксиса
- **fd** — быстрый поиск файлов
- **zoxide** — умный cd
- **delta** — красивые git diff'ы
- **lazygit** — визуальный git UI

### Python инструменты
- **uv** — быстрый менеджер пакетов
- **ruff** — linter/formatter

### База данных
- **litecli** — SQLite CLI
- **pgcli** — PostgreSQL CLI

---

## 🚀 Быстрый старт

### Установка на новой машине

```bash
# 1. Установить Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Клонировать dotfiles
git clone https://github.com/sudobertram/.dotfiles.git ~/dotfiles

# 3. Установить все инструменты
cd ~/dotfiles
brew install fish alacritty tmux neovim fzf ripgrep eza bat fd zoxide starship lazygit gh delta uv ruff litecli pgcli

# 4. Установить шрифты
brew install --cask font-jetbrains-mono-nerd-font

# 5. Создать симлинки
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/fish/conf.d ~/.config/fish/conf.d
ln -sf ~/dotfiles/fish/functions ~/.config/fish/functions
ln -sf ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# 6. Установить Fish как шелл по умолчанию
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"

# 7. Обновить Git конфиг своими данными
nvim ~/dotfiles/git/gitconfig
# Изменить: name = Your Name
#           email = your.email@example.com
```

---

## ⌨️ Горячие клавиши и команды

### Alacritty

| Команда | Действие |
|---------|----------|
| `Cmd + N` | Новое окно |
| `Cmd + W` | Закрыть окно |
| `Cmd + +` | Увеличить шрифт |
| `Cmd + -` | Уменьшить шрифт |
| `Cmd + 0` | Сбросить размер шрифта |
| `Cmd + K` | Очистить экран |
| `Cmd + V` | Вставить |
| `Cmd + C` | Копировать |

**Смена темы:**
```bash
alacritty-theme               # Список доступных тем
alacritty-theme nord          # Применить тему Nord
alacritty-theme catppuccin-mocha
alacritty-theme tokyo-night
```

Доступные темы:
- `catppuccin-mocha` (по умолчанию)
- `nord`
- `tokyo-night`
- `gruvbox-dark`
- `dracula`

---

### Fish Shell

#### Aliases (сокращения)

**Навигация:**
```bash
..          # cd ..
...         # cd ../..
....        # cd ../../..
```

**Улучшенные команды:**
```bash
ls          # eza с иконками
ll          # длинный список с git статусом
la          # все файлы
tree        # древовидный вид
cat         # bat с подсветкой синтаксиса
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
pm          # uv (менеджер пакетов)
```

**Редактор:**
```bash
v           # nvim
vim         # nvim
```

**Утилиты:**
```bash
c           # clear
q           # exit
wcl         # wc -l
h           # head
t           # tail
```

**Навигация:**
```bash
cd project  # Умный cd с zoxide (прыгает в часто используемые директории)
z project   # То же что и cd (alias для zoxide)
```

#### Функции

```bash
mkcd my-folder              # Создать директорию и перейти в неё
vf                          # Найти файл и открыть в nvim
pyproject my-app            # Создать Python проект с uv
alacritty-theme nord        # Сменить тему Alacritty
```

#### Горячие клавиши

| Комбинация | Действие |
|------------|----------|
| `Ctrl + R` | Поиск по истории команд (fzf) |
| `→` | Принять автодополнение |
| `Tab` | Перебрать варианты автодополнения |

---

### Tmux

**Запуск tmux:**
```bash
tmux                    # Новая сессия
tmux new -s name        # Новая сессия с именем
tmux attach -t name     # Присоединиться к сессии
tmux ls                 # Список сессий
```

#### Горячие клавиши (Prefix: `Ctrl + a`)

**Окна и панели:**

| Комбинация | Действие |
|------------|----------|
| `Ctrl + a` `\|` | Вертикальный split |
| `Ctrl + a` `-` | Горизонтальный split |
| `Ctrl + a` `h/j/k/l` | Навигация между панелями (vim-style) |
| `Ctrl + a` `c` | Новое окно |
| `Ctrl + a` `n` | Следующее окно |
| `Ctrl + a` `p` | Предыдущее окно |
| `Ctrl + a` `0-9` | Перейти к окну N |
| `Ctrl + a` `x` | Закрыть панель |
| `Ctrl + a` `d` | Отсоединиться от сессии |

**Другое:**

| Комбинация | Действие |
|------------|----------|
| `Ctrl + a` `r` | Перезагрузить конфиг |
| `Ctrl + a` `[` | Режим копирования (vim навигация) |

**Режим копирования (после `Ctrl + a` `[`):**
- `v` — начать выделение
- `y` — копировать выделение
- `q` — выйти из режима копирования

---

### Neovim

**Запуск:**
```bash
nvim file.py            # Редактировать файл
v file.py               # То же (alias)
vf                      # Найти файл и открыть
```

#### Горячие клавиши

**Базовые:**

| Комбинация | Действие |
|------------|----------|
| `Space + w` | Сохранить файл |
| `Space + q` | Выйти |
| `:q!` | Выйти без сохранения |

**Навигация:**

| Комбинация | Действие |
|------------|----------|
| `h/j/k/l` | Влево/Вниз/Вверх/Вправо |
| `w` | Следующее слово |
| `b` | Предыдущее слово |
| `gg` | Начало файла |
| `G` | Конец файла |
| `0` | Начало строки |
| `$` | Конец строки |

**Редактирование:**

| Комбинация | Действие |
|------------|----------|
| `i` | Режим вставки |
| `a` | Режим добавления |
| `o` | Новая строка ниже |
| `O` | Новая строка выше |
| `Esc` | Нормальный режим |
| `dd` | Удалить строку |
| `yy` | Копировать строку |
| `p` | Вставить |
| `u` | Отменить |
| `Ctrl + r` | Повторить |

**Комментарии:**

| Комбинация | Действие |
|------------|----------|
| `gcc` | Закомментировать/раскомментировать строку |
| `gc` (визуальный режим) | Закомментировать выделение |

**Окна:**

| Комбинация | Действие |
|------------|----------|
| `Ctrl + h/j/k/l` | Навигация между split'ами |
| `:split` | Горизонтальный split |
| `:vsplit` | Вертикальный split |

---

### Git

#### Aliases

```bash
git st              # status
git co              # checkout
git br              # branch
git ci              # commit
git lg              # красивый лог
git amend           # изменить последний commit
git undo            # отменить последний commit (сохранить изменения)
```

#### Lazygit

```bash
lg                  # Запустить lazygit
```

**Горячие клавиши Lazygit:**
- `Space` — Stage/unstage файл
- `c` — Commit
- `P` — Push
- `p` — Pull
- `Enter` — Посмотреть diff
- `Tab` — Переключение между панелями
- `?` — Помощь
- `q` — Выйти

---

## 📁 Структура

```
dotfiles/
├── alacritty/
│   ├── alacritty.toml          # Основной конфиг
│   └── themes/                 # Цветовые темы
├── fish/
│   ├── config.fish             # Основной конфиг (минимальный)
│   ├── conf.d/
│   │   ├── 00-env.fish        # Переменные окружения
│   │   ├── 01-aliases.fish    # Все aliases
│   │   └── 02-tools.fish      # Инициализация инструментов
│   └── functions/              # Кастомные функции
├── nvim/
│   └── init.lua                # Конфиг Neovim
├── tmux/
│   └── tmux.conf               # Конфиг Tmux
├── git/
│   └── gitconfig               # Конфиг Git
├── starship/
│   └── starship.toml           # Конфиг prompt
└── README.md
```

---

## 🎨 Кастомизация

### Сменить тему Alacritty

```bash
alacritty-theme                     # Список тем
alacritty-theme catppuccin-mocha    # Применить тему
```

### Добавить новый alias в Fish

Отредактируйте `~/dotfiles/fish/conf.d/01-aliases.fish`:
```fish
alias myalias "команда"
```

Перезагрузите:
```bash
source ~/.config/fish/config.fish
```

### Добавить новую функцию Fish

Создайте файл `~/dotfiles/fish/functions/myfunction.fish`:
```fish
function myfunction -d "Описание"
    # Ваш код здесь
end
```

### Изменить тему Neovim

Отредактируйте `~/dotfiles/nvim/init.lua` и измените `flavour`:
```lua
flavour = "mocha"  -- latte, frappe, macchiato, mocha
```

---

## 🔄 Синхронизация изменений

После изменения конфигов:

```bash
cd ~/dotfiles
git add .
git commit -m "Обновление конфига"
git push
```

---

## 💡 Советы

### Python разработка

**Создать новый проект:**
```bash
pyproject my-app
cd my-app
# Структура проекта готова с .venv, .gitignore, git
```

**Установить зависимости:**
```bash
uv add django fastapi sqlalchemy
```

**Запустить код:**
```bash
uv run python main.py
```

### Быстрый поиск файлов

```bash
vf              # Найти файл с превью
```

### Работа с базами данных

```bash
litecli db.sqlite           # SQLite с автодополнением
pgcli postgresql://...      # PostgreSQL с автодополнением
```

---

## 🆘 Решение проблем

### Шрифты отображаются неправильно

Убедитесь что используете Nerd Font в конфиге Alacritty:
```toml
[font.normal]
family = "JetBrainsMono Nerd Font"
```

### Fish не установлен как шелл по умолчанию

```bash
echo "$(which fish)" | sudo tee -a /etc/shells
chsh -s "$(which fish)"
```

### Плагины Neovim не загружаются

```bash
# Переустановить lazy.nvim
rm -rf ~/.local/share/nvim
nvim
```

### Prefix в Tmux не работает

Убедитесь что нажимаете `Ctrl + a` затем клавишу команды (не одновременно).

---

## 📚 Ресурсы

- [Документация Fish](https://fishshell.com/docs/current/)
- [Tmux Cheat Sheet](https://tmuxcheatsheet.com/)
- [Документация Neovim](https://neovim.io/doc/)
- [Конфигурация Starship](https://starship.rs/config/)

---

## 📝 Лицензия

MIT License - свободно используйте и модифицируйте!
