require("flutter-tools").setup({})

vim.keymap.set("n", "<leader>Fr", "<cmd>FlutterRun<CR>", { noremap = true })
vim.keymap.set("n", "<leader>FR", "<cmd>FlutterRestart<CR>", { noremap = true })
vim.keymap.set("n", "<leader>Fq", "<cmd>FlutterQuit<CR>", { noremap = true })
