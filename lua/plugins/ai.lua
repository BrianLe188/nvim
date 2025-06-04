return {
	{
		"olimorris/codecompanion.nvim",
		cmd = {
			"CodeCompanion",
			"CodeCompanionChat",
			"CodeCompanionActions",
			"CodeCompanionAdd",
		},
		keys = {
			{ "<leader>ae", ":CodeCompanionChat Add<cr>", mode = { "v" }, desc = "Code Companion Add" },
			{ "<leader>aa", ":CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "Code Companion Actions" },
			{ "<leader>ac", ":CodeCompanionChat<cr>", mode = { "n", "v" }, desc = "Code Companion Chat" },
			{ "<leader>ad", ":CodeCompanion /doc<cr>", mode = { "v" }, desc = "Code Companion Documentation" },
			{ "<leader>af", ":CodeCompanion /fix<cr>", mode = { "v" }, desc = "Code Companion Fix" },
			{ "<leader>ag", ":CodeCompanion /scommit<cr>", mode = { "n", "v" }, desc = "Code Companion Commit" },
			{ "<leader>ai", ":CodeCompanion<cr>", mode = { "n", "v" }, desc = "Code Companion Inline Prompt" },
			{ "<leader>al", ":CodeCompanion /lsp<cr>", mode = { "n", "v" }, desc = "Code Companion LSP" },
			{
				"<leader>an",
				function()
					require("codecompanion").chat()
				end,
				mode = { "n" },
				desc = "Code Companion New Chat",
			},
			{ "<leader>ap", ":CodeCompanion /pr<cr>", mode = { "n" }, desc = "Code Companion PR" },
			{ "<leader>ar", ":CodeCompanion /optimize<cr>", mode = { "v" }, desc = "Code Companion Refactor" },
			{ "<leader>as", ":CodeCompanion /spell<cr>", mode = { "n", "v" }, desc = "Code Companion Spell" },
			{ "<leader>at", ":CodeCompanion /tests<cr>", mode = { "v" }, desc = "Code Companion Generate Test" },
			{
				"<leader>at",
				":CodeCompanion #explain terminal error<cr>",
				mode = { "n" },
				desc = "Code Companion Explain Terminal Error",
			},
		},
		init = function()
			vim.g.codecompanion_auto_tool_mode = true
			vim.cmd([[cab cc CodeCompanion]])
			vim.cmd([[cab ccc CodeCompanionChat]])
		end,
		opts = {
			strategies = {
				chat = {
					adapter = "openai",
					keymaps = {},
					icons = {
						pinned_buffer = " ",
						watched_buffer = "👀 ",
					},
				},
				inline = {
					adapter = "openai",
					keymaps = {
						accept_change = {
							modes = { n = "ga" },
							description = "Accept the suggested change",
						},
						reject_change = {
							modes = { n = "gr" },
							description = "Reject the suggested change",
						},
					},
				},
			},
			display = {
				diff = { enabled = true },
				chat = {
					show_header_separator = false,
					show_settings = false, -- do not show settings to allow them to be changed with shortcuts
				},
				action_palette = { provider = "default" },
			},
			adapters = {
				openai = function()
					return require("codecompanion.adapters").extend("openai", {
						env = {
							api_key = "OPENAI_API_KEY",
						},
					})
				end,
			},
		},
		config = function(_, opts)
			require("codecompanion").setup(opts)
			require("plugins.codecompanion.extmarks").setup()
		end,
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		optional = true,
		opts = function(_, opts)
			vim.treesitter.language.register("markdown", "codecompanion")
			return opts
		end,
	},
}
