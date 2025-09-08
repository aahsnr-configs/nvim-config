local go = vim.g
local o = vim.opt

-- Optimizations on startup
vim.loader.enable()

-- Misc additions
go.ai_cmp = false
o.relativenumber = false
o.wrap = true

-- Personal Config and LazyVim global options
go.lualine_info_extras = false
go.snacks_animate = true
go.codeium_cmp_hide = false
go.lazygit_config = false
go.lazyvim_cmp = "blink"
go.lazyvim_picker = "snacks"
go.trouble_lualine = false

-- Define leader key
go.mapleader = " "
go.maplocalleader = "\\"

-- Autoformat on save (Global)
go.autoformat = true

-- Font
go.gui_font_default_size = 10
go.gui_font_size = go.gui_font_default_size
go.gui_font_face = "Maple Mono NF"

-- Enable EditorConfig integration
go.editorconfig = true

-- Root dir detection
go.root_spec = {
  "lsp",
  { ".git", "lua", ".obsidian", "package.json", "Makefile", "go.mod", "cargo.toml", "pyproject.toml", "src" },
  "cwd",
}

-- Disable annoying cmd line stuff
o.showcmd = false
o.laststatus = 3
o.cmdheight = 0

-- Disable native bufferline
o.showtabline = 0

-- Enable spell checking
o.spell = false
o.spelllang:append("en")

-- Backspacing and indentation when wrapping
o.backspace = { "start", "eol", "indent" }
o.breakindent = true

o.conceallevel = 2
