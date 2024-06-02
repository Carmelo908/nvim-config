vim.keymap.set("n", "<Esc>", ":", { desc = "Terminal mode with double escape from insert mode" }) 
vim.keymap.set("n", "r", ":redo<CR>", { desc = "Redo" })
vim.keymap.set("n", "<M-Up>", "ddkP", { desc = "Move line up" })
vim.keymap.set("n", "<M-Down>", "ddp", { desc = "Move line down" })
vim.keymap.set("n", "<C-c>", ":wq<CR>", { desc = "Save file and exit Neovim" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- nvim-tree keymaps
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle NvimTree" })
