-- return {
-- 	"craftzdog/solarized-osaka.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		transparent = true,
-- 		styles = {
-- 			comments = { italic = true },
-- 			keywords = { italic = true },
-- 			sidebars = "transparent",
-- 			floats = "transparent",
-- 		},
-- 	},
-- }
-- return {
-- 	"navarasu/onedark.nvim",
-- 	opts = {
-- 		style = "warmer",
-- 		transparent = true,
-- 	},
-- }
return {
	"catppuccin/nvim",
	lazy = true,
	name = "catppuccin",
	opts = {
		transparent_background = true,
		integrations = {
			aerial = true,
			alpha = true,
			cmp = true,
			dashboard = true,
			flash = true,
			fzf = true,
			grug_far = true,
			gitsigns = true,
			headlines = true,
			illuminate = true,
			indent_blankline = { enabled = true },
			leap = true,
			lsp_trouble = true,
			mason = true,
			markdown = true,
			mini = true,
			native_lsp = {
				enabled = true,
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			navic = { enabled = true, custom_bg = "lualine" },
			neotest = true,
			neotree = true,
			noice = true,
			notify = true,
			semantic_tokens = true,
			snacks = true,
			telescope = true,
			treesitter = true,
			treesitter_context = true,
			which_key = true,
			diffview = true,
		},
	},
	specs = {
		{
			"akinsho/bufferline.nvim",
			optional = true,
			opts = function(_, opts)
				if (vim.g.colors_name or ""):find("catppuccin") then
					opts.highlights = require("catppuccin.groups.integrations.bufferline").get_theme()
				end
			end,
		},
	},
}
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
-- return {
-- 	"Mofiqul/dracula.nvim",
-- 	opts = {
-- 		transparent_bg = true,
-- 		colors = {
-- 			bg = "#282A36",
-- 			fg = "#F8F8F2",
-- 			selection = "#44475A",
-- 			comment = "#6272A4",
-- 			red = "#FF5555",
-- 			orange = "#FFB86C",
-- 			yellow = "#F1FA8C",
-- 			green = "#50fa7b",
-- 			purple = "#BD93F9",
-- 			cyan = "#8BE9FD",
-- 			pink = "#FF79C6",
-- 			bright_red = "#FF6E6E",
-- 			bright_green = "#69FF94",
-- 			bright_yellow = "#FFFFA5",
-- 			bright_blue = "#D6ACFF",
-- 			bright_magenta = "#FF92DF",
-- 			bright_cyan = "#A4FFFF",
-- 			bright_white = "#FFFFFF",
-- 			menu = "#21222C",
-- 			visual = "#3E4452",
-- 			gutter_fg = "#4B5263",
-- 			nontext = "#3B4048",
-- 			white = "#ABB2BF",
-- 			black = "#191A21",
-- 		},
-- 		-- show the '~' characters after the end of buffers
-- 		show_end_of_buffer = true, -- default false
-- 		-- set custom lualine background color
-- 		lualine_bg_color = "#44475a", -- default nil
-- 		-- set italic comment
-- 		italic_comment = true, -- default false
-- 		-- overrides the default highlights with table see `:h synIDattr`
-- 		overrides = {},
-- 		-- You can use overrides as table like this
-- 		-- overrides = {
-- 		--   NonText = { fg = "white" }, -- set NonText fg to white
-- 		--   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
-- 		--   Nothing = {} -- clear highlight of Nothing
-- 		-- },
-- 		-- Or you can also use it like a function to get color from theme
-- 		-- overrides = function (colors)
-- 		--   return {
-- 		--     NonText = { fg = colors.white }, -- set NonText fg to white of theme
-- 		--   }
-- 		-- end,
-- 	},
-- }
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
-- return { "projekt0n/github-nvim-theme", name = "github-theme" }
-- return {
-- 	-- Our local colorscheme as a plugin
-- 	dir = vim.fn.stdpath("config"),
-- 	name = "minimal-colorscheme",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		local set_hl = vim.api.nvim_set_hl
--
-- 		-- Clear existing highlights
-- 		vim.cmd("highlight clear")
-- 		if vim.fn.exists("syntax_on") == 1 then
-- 			vim.cmd("syntax reset")
-- 		end
-- 		vim.o.termguicolors = true
-- 		vim.g.colors_name = "minimal"
--
-- 		-- Basic UI elements
-- 		set_hl(0, "Normal", { bg = "NONE", fg = "#e0e0e0" })
-- 		set_hl(0, "NonText", { bg = "NONE", fg = "#000000" })
-- 		set_hl(0, "CursorLine", { bg = "NONE" })
-- 		set_hl(0, "LineNr", { fg = "#606060" })
-- 		set_hl(0, "CursorLineNr", { fg = "#e0e0e0" })
-- 		set_hl(0, "SignColumn", { bg = "#000000" })
-- 		set_hl(0, "StatusLine", { bold = true, bg = "#1a1a1a", fg = "#b0b0b0" })
-- 		set_hl(0, "StatusLineNC", { bold = true, bg = "#1a1a1a", fg = "#606060" })
-- 		set_hl(0, "Directory", { fg = "#b0b0b0" })
-- 		set_hl(0, "Visual", { bg = "#4d4d4d" })
-- 		set_hl(0, "Search", { bg = "#505050", fg = "#e0e0e0" })
-- 		set_hl(0, "CurSearch", { bg = "#b0b0b0", fg = "#000000" })
-- 		set_hl(0, "IncSearch", { bg = "#b0b0b0", fg = "#000000" })
-- 		set_hl(0, "MatchParen", { bg = "#606060", fg = "#e0e0e0" })
-- 		set_hl(0, "Pmenu", { bg = "#222222", fg = "#e0e0e0" })
-- 		set_hl(0, "PmenuSel", { bg = "#505050", fg = "#e0e0e0" })
-- 		set_hl(0, "PmenuSbar", { bg = "#3a3a3a", fg = "#e0e0e0" })
-- 		set_hl(0, "VertSplit", { fg = "#505050" })
-- 		set_hl(0, "MoreMsg", { fg = "#b0b0b0" })
-- 		set_hl(0, "Question", { fg = "#b0b0b0" })
-- 		set_hl(0, "Title", { fg = "#b0b0b0" })
-- 		set_hl(0, "NonText", { fg = "#20c997", bg = "NONE" })
--
-- 		set_hl(0, "FloatBorder", { fg = "#505050" })
-- 		set_hl(0, "NormalFloat", { bg = "#111111", fg = "#e0e0e0" })
-- 		set_hl(0, "TelescopeBorder", { fg = "#505050" })
--
-- 		-- Syntax highlighting
-- 		set_hl(0, "Comment", { fg = "#757575", italic = true })
-- 		set_hl(0, "Constant", { fg = "#ffffff" })
-- 		set_hl(0, "Identifier", { fg = "#ffffff" })
-- 		set_hl(0, "Statement", { fg = "#ffffff" })
-- 		set_hl(0, "PreProc", { fg = "#ffffff" })
-- 		set_hl(0, "Type", { fg = "#ffffff" })
-- 		set_hl(0, "Special", { fg = "#ffffff" })
--
-- 		-- Refined syntax highlighting
-- 		set_hl(0, "String", { fg = "#ffffff" })
-- 		set_hl(0, "Number", { fg = "#ffffff" })
-- 		set_hl(0, "Boolean", { fg = "#ffffff" })
-- 		set_hl(0, "Function", { fg = "#ffffff" })
-- 		set_hl(0, "Keyword", { fg = "#ffffff", italic = true })
--
-- 		-- HTML syntax
-- 		set_hl(0, "Tag", { fg = "#ffffff" })
-- 		set_hl(0, "@tag.delimiter", { fg = "#ffffff" })
-- 		set_hl(0, "@tag.attribute", { fg = "#ffffff" })
--
-- 		-- Messages
-- 		set_hl(0, "ErrorMsg", { fg = "#ff8888" })
-- 		set_hl(0, "Error", { fg = "#ff8888" })
-- 		set_hl(0, "DiagnosticError", { fg = "#ff8888" })
-- 		set_hl(0, "DiagnosticVirtualTextError", { bg = "#1a0000", fg = "#ff0000" })
-- 		set_hl(0, "WarningMsg", { fg = "#ffe08a" })
-- 		set_hl(0, "DiagnosticWarn", { fg = "#ffe08a" })
-- 		set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#1a1400", fg = "#ffcc00" })
-- 		set_hl(0, "DiagnosticInfo", { fg = "#87cfff" })
-- 		set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#00141a", fg = "#00ccff" })
-- 		set_hl(0, "DiagnosticHint", { fg = "#90ffff" })
-- 		set_hl(0, "DiagnosticVirtualTextHint", { bg = "#001a1a", fg = "#00ffff" })
-- 		set_hl(0, "DiagnosticOk", { fg = "#88ff99" })
--
-- 		-- Common plugins
-- 		set_hl(0, "CopilotSuggestion", { fg = "#808080" })
-- 		set_hl(0, "TelescopeSelection", { bg = "#4d4d4d" })
-- 	end,
-- return {
-- 	"armannikoyan/rusty",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		transparent = true,
-- 		italic_comments = true,
-- 		underline_current_line = true,
-- 		colors = {
-- 			foreground = "#c5c8c6",
-- 			background = "#1d1f21",
-- 			selection = "#727272",
-- 			line = "#282a2e",
-- 			comment = "#969896",
-- 			red = "#cc6666",
-- 			orange = "#de935f",
-- 			yellow = "#f0c674",
-- 			green = "#b5bd68",
-- 			aqua = "#8abeb7",
-- 			blue = "#81a2be",
-- 			purple = "#b294bb",
-- 			window = "#4d5057",
-- 		},
-- 	},
-- }
