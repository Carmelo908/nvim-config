return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			settings = {
    	  Lua = {
    	    runtime = {
    	      version = "LuaJIT",
    	    },
    	    diagnostics = {
    	      globals = { "vim" },
    	    },
    	    workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
    	    },
    	    telemetry = { -- Do not send telemetry data containing a randomized but unique identifier
    	      enable = false,
    	    },
				},
  		},
		})
	end
}
