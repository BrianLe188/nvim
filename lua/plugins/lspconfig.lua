return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
			diagnostics = {
				float = {
					border = "rounded",
				},
				virtual_text = true,
				update_in_insert = true,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = function()
			local Keys = require("lazyvim.plugins.lsp.keymaps").get()
			vim.list_extend(Keys, {
				{
					"gd",
					"<cmd>FzfLua lsp_definitions     jump1=true ignore_current_line=true<cr>",
					desc = "Goto Definition",
					has = "definition",
				},
				{
					"gr",
					"<cmd>FzfLua lsp_references      jump1=true ignore_current_line=true<cr>",
					desc = "References",
					nowait = true,
				},
				{
					"gI",
					"<cmd>FzfLua lsp_implementations jump1=true ignore_current_line=true<cr>",
					desc = "Goto Implementation",
				},
				{
					"gy",
					"<cmd>FzfLua lsp_typedefs        jump1=true ignore_current_line=true<cr>",
					desc = "Goto T[y]pe Definition",
				},
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"css-lsp",
			},
		},
	},
}
