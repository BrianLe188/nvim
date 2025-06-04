return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
		styles = {
			comments = { italic = true },
			keywords = { italic = true },
			sidebars = "transparent",
			floats = "transparent",
		},
	},
}
-- return {
-- 	"navarasu/onedark.nvim",
-- 	opts = {
-- 		style = "warmer",
-- 		transparent = true,
-- 	},
-- }
-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	-- priority = 1000,
-- 	opts = {
-- 		transparent_background = true,
-- 		flavour = "macchiato",
-- 	},
-- }
--
-- return {
-- 	"folke/tokyonight.nvim",
-- 	opts = {
-- 		transparent = true,
-- 		styles = {
-- 			sidebars = "transparent",
-- 			floats = "transparent",
-- 		},
-- 	},
-- }
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	opts = {
-- 		transparent = true,
-- 		background = { dark = "dragon", light = "lotus" },
-- 	},
-- }
-- return { "Mofiqul/dracula.nvim", opts = {
-- 	transparent_bg = true,
-- } }
-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	opts = {
-- 		transparent = true,
-- 		-- Enable italic comment
-- 		italic_comments = true,
-- 		-- Underline `@markup.link.*` variants
-- 		underline_links = true,
-- 		-- Disable nvim-tree background color
-- 		disable_nvimtree_bg = true,
-- 		-- Apply theme colors to terminal
-- 		terminal_colors = true,
-- 		-- Override colors (see ./lua/vscode/colors.lua)
-- 		color_overrides = {
-- 			vscLineNumber = "#FFFFFF",
-- 		},
-- 	},
-- }
-- return {}
-- return {
-- 	"ficcdaf/ashen.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 	},
-- }
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = true,
-- 	otps = {},
-- }
-- return {
-- 	"wtfox/jellybeans.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		background = "dark", -- "dark" or "light"
-- 		transparent = false,
-- 		italics = true,
-- 		flat_ui = true, -- toggles "flat UI" for pickers
-- 		palette = nil, -- specify a palette variant: nil (default/"vibrant") or "jellybeans_muted"
-- 		plugins = {
-- 			all = false,
-- 			auto = true, -- will read lazy.nvim and apply the colors for plugins that are installed
-- 		},
-- 		on_highlights = function(hl, _c)
-- 			hl.Constant = { fg = "#00ff00", bold = true }
-- 		end,
-- 		on_colors = function(c)
-- 			local light_bg = "#ffffff"
-- 			local dark_bg = "#000000"
-- 			c.background = vim.o.background == "light" and light_bg or dark_bg
-- 		end,
-- 	},
-- }
