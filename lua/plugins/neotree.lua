return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle reveal<cr>", desc = "Toggle NeoTree" },
		{
			"<leader>E",
			function()
				local neotree = require("neo-tree")
				-- Kiểm tra nếu window đang ở "current", chuyển sang "left"
				if neotree.config.filesystem.window.position == "current" then
					neotree.config.filesystem.window.position = "left"
				else
					neotree.config.filesystem.window.position = "current"
				end
				-- Đóng rồi mở lại để cập nhật vị trí hiển thị mới
				vim.cmd("Neotree close")
				vim.cmd("Neotree reveal")
			end,
			desc = "Toggle NeoTree Position",
		},
	},
	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
			},
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
