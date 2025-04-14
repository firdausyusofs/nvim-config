-- set local shiftwidth=4 tabstop=8 softtabstop=4 expandtab:
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.softtabstop = 4
vim.opt_local.expandtab = false

if vim.fn.has("nvim") == 1 then
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.php",
    callback = function()
      vim.lsp.buf.format({ timeout_ms = 1000 })
    end
  })
end
