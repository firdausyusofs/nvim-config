-- require("mason").setup({
--   ui = {
--     border = "rounded",
--     icons = {
--       package_installed = "✓",
--       package_pending = "➜",
--       package_uninstalled = "✗",
--     },
--   },
-- })
--
-- require("mason-lspconfig").setup({
--   ensure_installed = vim.tbl_keys(require("lsp.servers")),
-- })
require("lspconfig.ui.windows").default_options.border = "single"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- local mason_lspconfig = require("mason-lspconfig")
--
-- mason_lspconfig.setup_handlers({
--   function (server_name)
--     require("lspconfig")[server_name].setup({
--       capabilities = capabilities,
--       on_attach = require("lsp.on_attach").on_attach,
--       settings = require("lsp.servers")[server_name],
--       filetypes = (require("lsp.servers")[server_name] or {}).filetypes,
--     })
--   end,
-- })

for server_name, server_config in pairs(require("lsp.servers")) do
  local lspconfig = require("lspconfig")
  local on_attach = require("lsp.on_attach").on_attach
  local settings = server_config
  local filetypes = server_config.filetypes

  lspconfig[server_name].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = settings,
    filetypes = filetypes,
  })
end

vim.diagnostic.config({
  title = false,
  underline = true,
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    source = true,
    style = "minimal",
    border = "rounded",
    header = "",
    prefix = "",
  },
})

local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
local diagnostic_signs = {}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  table.insert(diagnostic_signs, { name = hl, text = icon, texthl = hl, numhl = "" })
  --vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
vim.diagnostic.config({
  signs = diagnostic_signs,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    require("conform").format({
      bufnr = args.buf,
      lsp_fallback = false,
      quiet = true,
    })
  end,
})
