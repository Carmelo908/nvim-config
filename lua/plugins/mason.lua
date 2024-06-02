M = {
	"williamboman/mason.nvim",
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		'nvim-lua/plenary.nvim',
	},
	automatic_installation = true,
}

local servers = {
	"lua_ls",
	"clangd",
	"pylyzer",
	"bashls",
}

function M.config()
	require("mason").setup()
	require("mason-lspconfig").setup_handlers({
		function(server_name)
			require("lspconfig")[server_name].setup {}
		end
	})
	require("mason-lspconfig").setup({
		local lspconfig = require("lspconfig"),
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

	})
end

return M
