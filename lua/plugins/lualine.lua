local custom_sections = {
	lualine_a = { 
		{ "mode", icon = { "", color = { fg = "#000000" } }, color = { fg = "#000000" } } 
	},
	lualine_b = {
		{ "branch", icon = { "", color = { fg = "#ff4000" } }, color = { fg = "#ffffff" } },
		{ "diff "},
		"db_ui#statusline",
	},
	lualine_c = { 
		{ "filename", file_status = true, path = 1 },
	},
	lualine_x = {
		"diagnostics",
		"diff",
	},
	lualine_y = { "location" },
	lualine_z = { "filetype" },
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = 'wombat',
				icons_enabled = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
				refresh = {
					statusline = 10000,
					tabline = 10000,
					winbar = 10000,
				},
				disabled_filetypes = {
					"NvimTree",
					"help",
					"lazy",
					"mason",
					"telescope",
					"TelescopePrompt",
				},
			},
			extensions = { "quickfix", "fugitive" },
			sections = custom_sections,
			inactive_winbar = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
