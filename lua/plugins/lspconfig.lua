return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				denols = {
					enabled = true,
				},
			},
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
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"css-lsp",
			},
		},
	},
}
