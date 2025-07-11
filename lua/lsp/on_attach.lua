-- local changetracking = require("vim.lsp._changetracking")

M = {}

M.on_attach = function(client, bufnr)
	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

  -- if client.name == "sourcekit" then
  --   if vim.api.nvim_buf_is_loaded(bufnr) then
  --     pcall(function()
  --       changetracking.init(client, bufnr)
  --     end)
  --   end
  -- end

	nmap("gd", require("telescope.builtin").lsp_definitions, "Goto Definition")
	nmap("gr", require("telescope.builtin").lsp_references, "Goto References")
	nmap("gi", require("telescope.builtin").lsp_implementations, "Goto Implementation")
	nmap("go", require("telescope.builtin").lsp_type_definitions, "Type Definition")
	-- nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

	nmap("<leader>rn", vim.lsp.buf.rename, "Rename Symbol")

	nmap("gl", vim.diagnostic.open_float, "Open Diagnostic Float")

	nmap("K", vim.lsp.buf.hover, "Hover Documentation")
	nmap("gs", vim.lsp.buf.signature_help, "Signature Documentation")

	-- nmap("gD", vim.lsp.buf.declaration, "Goto Declaration")
	nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "Workspace Add Folder")
	nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "Workspace Remove Folder")
	nmap("<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, "Workspace List Folders")

	nmap("<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", "Goto Definition in Vertical Split")
end

return M
