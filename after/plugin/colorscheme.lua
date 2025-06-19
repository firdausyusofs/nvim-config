-- require("rose-pine").setup({
--   disable_background = true,
-- })
--
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- set termguicolors

local utils = require("utils")

vim.opt.termguicolors = true

utils.color_overrides.setup_colorscheme_overrides()

vim.cmd("colorscheme custom")
