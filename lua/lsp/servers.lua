return {
	jsonls = {
		settings = {
			json = {
				schema = require("schemastore").json.schemas(),
				validate = { enable = true },
			},
		},
	},
  clangd = {
      -- root_dir = require("lspconfig.util").root_pattern(
      --     "compile_commands.json",
      --     "compile_flags.txt",
      --     ".git"
      -- ),
      cmd = {
          "clangd",
          "--background-index",
          "--offset-encoding=utf-8",
      },
  },
    -- clangd = {
    --     cmd = { "clangd", "--background-index" },
    --     filetypes = { "c", "cpp", "objc", "objcpp" },
    --     root_dir = require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    --     init_options = {
    --         clangdFileStatus = true,
    --         usePlaceholders = true,
    --         completeUnimported = true,
    --         semanticHighlighting = true,
    --     },
    -- },
	intelephense = {
		settings = {
			intelephense = {
				files = {
					maxSize = 1000000,
				},
			},
		},
	},
    -- phpactor = {
    --     completion = {
    --         enabled = true,
    --     },
    --     diagnostics = {
    --         enabled = true,
    --     },
    --     goto = {
    --         enabled = true,
    --     },
    --     hover = {
    --         enabled = true,
    --     },
    --     references = {
    --         enabled = true,
    --     },
    --     rename = {
    --         enabled = true,
    --     },
    --     signatureHelp = {
    --         enabled = true,
    --     },
    --     workspaceSymbol = {
    --         enabled = true,
    --     },
    -- },
	lua_ls = {
		Lua = {
			telemetry = { enable = false },
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
	bashls = {
		filetypes = { "sh", "zsh" },
	},
	vimls = {
		filetypes = { "vim" },
	},
	ts_ls = {},
	yamlls = {
		cmd = { "yaml-language-server", "--stdio" },
		filetypes = { "yaml" },
	},
	gopls = {},
	pyright = {},
  rust_analyzer = {},
  zls = {
    settings = {
      zls = {
        enable_autofix = true,
        enable_snippets = true,
        enable_ast_check_diagnostics = true,
        enable_import_embedfile_argument_completions = true,
        warn_style = true,
        enable_semantic_tokens = true,
        enable_inlay_hints = true,
        inlay_hints_hide_redundant_param_names = true,
        inlay_hints_hide_redundant_param_names_last_token = true,
        operator_completions = true,
        include_at_in_builtins = true,
        max_detail_length = 1048576,
      }
    }
    -- Zls = {
    --   enable_autofix = true,
    --   enable_snippets = true,
    --   enable_ast_check_diagnostics = true,
    --   enable_import_embedfile_argument_completions = true,
    --   warn_style = true,
    --   enable_semantic_tokens = true,
    --   enable_inlay_hints = true,
    --   inlay_hints_hide_redundant_param_names = true,
    --   inlay_hints_hide_redundant_param_names_last_token = true,
    --   operator_completions = true,
    --   include_at_in_builtins = true,
    --   max_detail_length = 1048576,
    -- }
  },
  ols = {},
  ocamllsp = {},
  -- sourcekit = {}
  jdtls = {
    cmd = { "jdtls" },
    filetypes = { "java", "gradle", "groovy", "kotlin" },
    root_dir = require("lspconfig.util").root_pattern(
      ".git", "mvnw", "gradlew", "pom.xml", "build.gradle", ".classpath"
    ),
    settings = {}, -- ✅ make sure settings is a serializable table
  },
  -- sourcekit = {
  --   -- cmd = {
  --   --   "sourcekit-lsp",
  --   -- },
  --   -- cmd = { "env", "LIBRARY_PATH=" .. os.getenv("LIBRARY_PATH"), "SOURCEKIT_LOGGING=1", "sourcekit-lsp" },
  --   cmd = {
  --     "env",
  --     "LIBRARY_PATH=/nix/store/gd2iijcd4yaglkmkz3csbbvg81nd3k7x-gcc-14.2.1.20250322-lib/lib:/nix/store/7kpxf47mzykkdn39lcnhj9z9ngpihamf-glibc-2.40-66/lib",
  --     "sourcekit-lsp"
  --   },
  --   root_dir = function(filename, _)
  --     local util = require("lspconfig.util")
  --     return util.root_pattern("buildServer.json")(filename)
  --       or util.root_pattern("*.xcodeproj", "*.xcworkspace")(filename)
  --       or util.find_git_ancestor(filename)
  --       or util.root_pattern("Package.swift")(filename)
  --   end,
  -- },
  csharp_ls = {},
}
