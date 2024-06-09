-- Editing actions
vim.keymap.set("n", "<M-Up>", "ddkP", { desc = "Move line up" })
vim.keymap.set("n", "<M-Down>", "ddp", { desc = "Move line down" })
vim.keymap.set("n", "<S-f>", "v^di", { desc = "Delete line from cursor to the start and enter insert mode" })
vim.keymap.set("n", "f", "v^d", { desc = "Delete line from cursor to the start" })
vim.keymap.set("n", "<C-t>", "<cmd>ColorizerToggle<CR>", { desc = "Colorizer Toggle" })


-- Other actions
vim.keymap.set("n", "<Esc>", ":", { desc = "Terminal mode with double escape from insert mode" })
vim.keymap.set("n", "r", ":redo<CR>", { desc = "Redo" })
vim.keymap.set("n", "<C-c>", ":wq<CR>", { desc = "Save file and exit Neovim" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<F8>", "<cmd>source ~/.config/nvim/init.lua<cr>", { desc = "Reload config" })

-- nvim-tree keymaps
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle NvimTree" })
