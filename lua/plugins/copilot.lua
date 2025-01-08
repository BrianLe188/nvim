return {
	"github/copilot.vim",
	config = function()
		-- Cấu hình phím tắt cho Copilot
		vim.g.copilot_no_tab_map = true
		vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(copilot-next)", { silent = true })
		vim.api.nvim_set_keymap("i", "<C-l>", "copilot#Accept('<CR>')", { expr = true, silent = true })
	end,
}
