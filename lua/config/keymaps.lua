vim.keymap.set(
	"n",
	"<leader>E",
	":Neotree filesystem reveal left<CR>",
	{ silent = true, noremap = true, desc = "Left Neo-tree" }
)
vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
