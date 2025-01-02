-- ==============================================================================
--   Name:        One Half Dark (Lua Version)
--   Author:      Son A. Pham <sp@sonpham.me>
--   Url:         https://github.com/sonph/onehalf
--   License:     The MIT License (MIT)
-- ==============================================================================

vim.o.background = "dark"
vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "onehalfdark"

local colors = {
  black       = "#282c34",
  red         = "#e06c75",
  green       = "#98c379",
  yellow      = "#e5c07b",
  blue        = "#61afef",
  purple      = "#c678dd",
  cyan        = "#56b6c2",
  white       = "#dcdfe4",
  comment_fg  = "#5c6370",
  gutter_bg   = "#282c34",
  gutter_fg   = "#919baa",
  non_text    = "#373C45",
  cursor_line = "#313640",
  color_col   = "#313640",
  selection   = "#474e5d",
  vertsplit   = "#313640",
}

local function set_highlight(group, fg, bg, attr)
  local highlight = {}
  if fg then highlight.fg = fg end
  if bg then highlight.bg = bg end
  if attr then highlight["gui"] = attr end
  vim.api.nvim_set_hl(0, group, highlight)
end

-- User interface colors
set_highlight("Normal", colors.white, colors.black)
set_highlight("Cursor", colors.black, colors.blue)
set_highlight("CursorColumn", nil, colors.cursor_line)
set_highlight("CursorLine", nil, colors.cursor_line)
set_highlight("LineNr", colors.gutter_fg, colors.gutter_bg)
set_highlight("CursorLineNr", colors.white, nil)

set_highlight("DiffAdd", colors.green, nil)
set_highlight("DiffChange", colors.yellow, nil)
set_highlight("DiffDelete", colors.red, nil)
set_highlight("DiffText", colors.blue, nil)

set_highlight("IncSearch", colors.black, colors.yellow)
set_highlight("Search", colors.black, colors.yellow)

set_highlight("ErrorMsg", colors.white, nil)
set_highlight("ModeMsg", colors.white, nil)
set_highlight("MoreMsg", colors.white, nil)
set_highlight("WarningMsg", colors.red, nil)
set_highlight("Question", colors.purple, nil)

set_highlight("Pmenu", colors.black, colors.white)
set_highlight("PmenuSel", colors.white, colors.blue)
set_highlight("PmenuSbar", nil, colors.selection)
set_highlight("PmenuThumb", nil, colors.white)

set_highlight("SpellBad", colors.red, nil)
set_highlight("SpellCap", colors.yellow, nil)
set_highlight("SpellLocal", colors.yellow, nil)
set_highlight("SpellRare", colors.yellow, nil)

set_highlight("StatusLine", colors.blue, colors.cursor_line)
set_highlight("StatusLineNC", colors.comment_fg, colors.cursor_line)
set_highlight("TabLine", colors.comment_fg, colors.cursor_line)
set_highlight("TabLineFill", colors.comment_fg, colors.cursor_line)
set_highlight("TabLineSel", colors.white, colors.black)

set_highlight("Visual", nil, colors.selection)
set_highlight("VisualNOS", nil, colors.selection)

set_highlight("ColorColumn", nil, colors.color_col)
set_highlight("Conceal", colors.white, nil)
set_highlight("Directory", colors.blue, nil)
set_highlight("VertSplit", colors.vertsplit, colors.vertsplit)
set_highlight("Folded", colors.white, nil)
set_highlight("FoldColumn", colors.white, nil)
set_highlight("SignColumn", colors.white, nil)

set_highlight("MatchParen", colors.blue, nil, "underline")
set_highlight("SpecialKey", colors.white, nil)
set_highlight("Title", colors.green, nil)
set_highlight("WildMenu", colors.white, nil)

-- Syntax colors
set_highlight("Whitespace", colors.non_text, nil)
set_highlight("NonText", colors.non_text, nil)
set_highlight("Comment", colors.comment_fg, nil, "italic")
set_highlight("Constant", colors.cyan, nil)
set_highlight("String", colors.green, nil)
set_highlight("Character", colors.green, nil)
set_highlight("Number", colors.yellow, nil)
set_highlight("Boolean", colors.yellow, nil)
set_highlight("Float", colors.yellow, nil)

set_highlight("Identifier", colors.red, nil)
set_highlight("Function", colors.blue, nil)
set_highlight("Statement", colors.purple, nil)

set_highlight("Conditional", colors.purple, nil)
set_highlight("Repeat", colors.purple, nil)
set_highlight("Label", colors.purple, nil)
set_highlight("Operator", colors.white, nil)
set_highlight("Keyword", colors.red, nil)
set_highlight("Exception", colors.purple, nil)

set_highlight("PreProc", colors.yellow, nil)
set_highlight("Include", colors.purple, nil)
set_highlight("Define", colors.purple, nil)
set_highlight("Macro", colors.purple, nil)
set_highlight("PreCondit", colors.yellow, nil)

set_highlight("Type", colors.yellow, nil)
set_highlight("StorageClass", colors.yellow, nil)
set_highlight("Structure", colors.yellow, nil)
set_highlight("Typedef", colors.yellow, nil)

set_highlight("Special", colors.blue, nil)
set_highlight("SpecialChar", colors.white, nil)
set_highlight("Tag", colors.white, nil)
set_highlight("Delimiter", colors.white, nil)
set_highlight("SpecialComment", colors.white, nil)
set_highlight("Debug", colors.white, nil)
set_highlight("Underlined", colors.white, nil)
set_highlight("Ignore", colors.white, nil)
set_highlight("Error", colors.red, colors.gutter_bg)
set_highlight("Todo", colors.purple, nil)

-- Git colors
set_highlight("GitGutterAdd", colors.green, colors.gutter_bg)
set_highlight("GitGutterDelete", colors.red, colors.gutter_bg)
set_highlight("GitGutterChange", colors.yellow, colors.gutter_bg)
set_highlight("GitGutterChangeDelete", colors.red, colors.gutter_bg)

-- Terminal colors for Neovim
if vim.fn.has("nvim") == 1 then
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.white
  vim.g.terminal_color_8 = colors.black
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.white
  vim.g.terminal_color_background = colors.black
  vim.g.terminal_color_foreground = colors.white
end
