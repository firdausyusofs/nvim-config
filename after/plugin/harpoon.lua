local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<m-h><m-m>", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<m-h><m-r>", function()
  harpoon:list():remove()
end)
vim.keymap.set("n", "<m-h><m-c>", function()
  harpoon:list():clear()
end)
vim.keymap.set("n", "<m-h><m-l>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Set <space>1..<space>5 be my shortcuts to moving to the files
for _, idx in ipairs({ 1, 2, 3, 4, 5 }) do
  vim.keymap.set("n", string.format("<space>%d", idx), function()
    harpoon:list():select(idx)
  end)
end
