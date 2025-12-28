-- Базовые настройки Neovim

-- Leader key
vim.g.mapleader = " "

-- Основные опции
vim.opt.number = true              -- Номера строк
vim.opt.relativenumber = true      -- Относительная нумерация
vim.opt.mouse = "a"                -- Мышь
vim.opt.clipboard = "unnamedplus"  -- Системный буфер
vim.opt.undofile = true            -- История отмен
vim.opt.ignorecase = true          -- Игнорировать регистр в поиске
vim.opt.smartcase = true           -- Умный регистр
vim.opt.expandtab = true           -- Пробелы вместо tab
vim.opt.shiftwidth = 4             -- Отступ 4 пробела
vim.opt.tabstop = 4                -- Tab = 4 пробела
vim.opt.termguicolors = true       -- True colors
vim.opt.splitright = true          -- Split справа
vim.opt.splitbelow = true          -- Split снизу

-- Горячие клавиши
local map = vim.keymap.set

-- Сохранение/выход
map("n", "<leader>w", ":w<CR>", { desc = "Сохранить" })
map("n", "<leader>q", ":q<CR>", { desc = "Выйти" })

-- Навигация между окнами
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Очистка поиска
map("n", "<Esc>", ":noh<CR>")

-- Bootstrap lazy.nvim (менеджер плагинов)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Плагины
require("lazy").setup({
  -- Тема Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true, -- Прозрачный фон
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  -- Автозакрытие скобок
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Комментирование
  {
    "numToStr/Comment.nvim",
    config = true,
  },
})
