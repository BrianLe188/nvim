return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		routes = {
			{
				filter = {
					event = "notify",
					any = {
						{

							find = "No information available",
						},
						{
							kind = "",
							find = "written",
						},
					},
				},
				opts = {
					skip = true,
				},
			},
			{
				filter = {
					event = "msg_show",
				},
				opts = { skip = true },
			},
		},
		presets = {
			bottom_search = true,
			lsp_doc_border = true,
		},
		cmdline = {
			enabled = true,
			bottom_cmd = true,
			view = "cmdline",
		},
	},
	-- opts = function(_, opts)
	-- 	table.insert(opts.routes, {
	-- 		filter = {
	-- 			event = "notify",
	-- 			find = "No information available",
	-- 		},
	-- 		opts = {
	-- 			skip = true,
	-- 		},
	-- 	})
	-- 	opts.presets.lsp_doc_border = true
	-- 	opts.cmdline.enabled = false
	-- 	opts.cmdline.view = "cmdline"
	-- end,
}
