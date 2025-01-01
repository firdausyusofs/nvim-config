local dashboard = require("alpha.themes.dashboard")

local logo = [[
        _                ___       _.--.
        \`.|\..----...-'`   `-._.-'_.-'`
        /  ' `         ,       __.--'
        )/' _/     \   `-_,   /
        `-'" `"\_  ,_.-;_.-\_ ',     
            _.-'_./   {_.'   ; /
bug.       {_.-``-'         {_/
]]

dashboard.section.header.val = vim.split(logo, "\n")
dashboard.section.buttons.val = {}

require("alpha").setup(dashboard.opts)
