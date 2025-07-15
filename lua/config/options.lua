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
  smartcase = true,
	ignorecase = true,
	mouse = "a",
	autowriteall = true,
	pumheight = 10,
	showmode = false,
	showtabline = 0,
	smartindent = true,
	autoindent = true,
	splitbelow = true,
	splitright = true,
	termguicolors = true,
	timeoutlen = 1000,
	updatetime = 1,
	writebackup = false,
	expandtab = true,
	modifiable = true,
	foldmethod = "manual",
	tabstop = 2,
  shiftwidth = 2,
	cursorline = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  shada = { "'10", "<0", "s10", "h" },
  swapfile = false,
  breakindent = true,
  shiftround = true,
  showmatch = true,
  wrap = true,
  linebreak = true,
  scrolloff = 8,
  sidescrolloff = 8,
  laststatus = 3,
  showcmd = false,
  ruler = false,
  guifont = "monospace:h17",
  title = true,
  titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)',
  more = false,
  confirm = true,
  fillchars = { eob = " " },
  list = true,
  listchars = { tab = "  ", trail = "·", nbsp = "␣", eol = "↲" },
  cursorlineopt = "number",
  undofile = true,
	guicursor = "",
  colorcolumn = "80",
  inccommand = "split",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.formatoptions:remove("o")

vim.cmd([[colorscheme rose-pine]])
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
