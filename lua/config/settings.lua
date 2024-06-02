local opt = vim.o
local g = vim.g

-- NeoVim UI
opt.showmode = false -- Hide mode information at command line
opt.number = true -- Show line number
opt.smartindent = true 
opt.autoindent = true -- Indent a new line the same amount as the line just typed
opt.showcmd = true -- Show partial command you type in the last line of the screen
opt.shiftwidth = 2 -- Set tab width to 2 columns.
opt.tabstop = 2 -- I don't know, the same than above
opt.wildmenu = true -- Enable auto completion menu after pressing TAB.
opt.syntax = "on" -- Turn syntax highlighting on.
opt.wrap = false -- Turn off line autowrapping
