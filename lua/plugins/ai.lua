-- return {
-- 	"yetone/avante.nvim",
-- 	event = "VeryLazy",
-- 	version = false, -- Never set this value to "*"! Never!
-- 	opts = {
-- 		-- add any opts here
-- 		-- for example
-- 		provider = "openai",
-- 		openai = {
-- 			endpoint = "https://api.openai.com/v1",
-- 			model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
-- 			timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
-- 			temperature = 0,
-- 			max_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
-- 			--reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
-- 		},
-- 	},
-- 	-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
-- 	build = "make",
-- 	-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
-- 	dependencies = {
-- 		"nvim-treesitter/nvim-treesitter",
-- 		"stevearc/dressing.nvim",
-- 		"nvim-lua/plenary.nvim",
-- 		"MunifTanjim/nui.nvim",
-- 		"echasnovski/mini.pick",
-- 	},
-- }
return {
	{
		"olimorris/codecompanion.nvim",
		opts = {
			strategies = {
				chat = {
					adapter = "openai",
				},
				inline = {
					adapter = "openai",
				},
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
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},
}
