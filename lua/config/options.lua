vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	completeopt = { "menu", "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	autowriteall = true,
	pumheight = 10,
	showmode = false,
	showtabline = 0,
	smartcase = true,
	smartindent = true,
	autoindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 1000,
	updatetime = 1,
	writebackup = false,
	expandtab = true,
	modifiable = true,
	foldmethod = "manual",
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
  number = true,
  breakindent = true,
  relativenumber = true,
  shiftround = true,
  showmatch = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  laststatus = 3,
  showcmd = false,
  ruler = false,
  guifont = "monospace:h17",
  title = true,
  confirm = true,
  fillchars = { eob = " " },
  list = true,
  listchars = { tab = "  ", trail = "·", nbsp = "␣", eol = "↲" },
  cursorlineopt = "number",
  undofile = true,
	guicursor = "",
  colorcolumn = "80",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd([[colorscheme rose-pine]])
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
