-- Use line numbers & relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Sync clipboard b/w OS and Neovim.
--   Schedule after `UiEnter` b/c it can increase startup-time.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Use Unix style line-endings
vim.opt.fileformat = unix

-- Indent settings
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching (unless \C or capital letters in search term)
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Use true colors
vim.opt.termguicolors = true

-- Editor behavior and appearance
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.wrap = false

-- Allows visual block mode to select past end of line
vim.opt.virtualedit = "block"

-- Preview substitutions live, as you type.
vim.opt.inccommand = "split"

-- Splitting behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Decrease update time
vim.opt.updatetime = 250

-- Sets how neovim will display crtain whitespace chars in editor
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
