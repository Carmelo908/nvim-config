return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = { 
			"c", 
			"lua", 
			"vim", 
			"vimdoc", 
			"query", 
			"javascript", 
			"html",
			"cpp",
			"python",
			"css",
			"json",
			"bash",
			"cmake",
		},
  	sync_install = false,
  	highlight = { enable = true },
  	indent = { enable = true },
	}
}
