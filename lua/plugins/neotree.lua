return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle reveal<cr>", desc = "Toggle NeoTree" },
		{ "<leader>E", nil },
	},
	opts = {
		filesystem = {
			follow_current_file = true,
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					-- '.git',
					-- '.DS_Store',
					-- 'thumbs.db',
				},
				never_show = {},
			},
			window = {
				position = "current",
			},
		},
		default_component_configs = {
			git_status = {
				symbols = {
					-- Change type
					added = "✚",
					deleted = "✖",
					modified = "✎",
					renamed = "➜",
					-- Status type
					untracked = "?",
					ignored = "⊘",
					unstaged = "⚠",
					staged = "✔",
					conflict = "⚔",
				},
				align = "right",
			},
		},
	},
}
