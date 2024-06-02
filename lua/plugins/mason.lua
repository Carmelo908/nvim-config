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
		function (server_name)
		    require("lspconfig")[server_name].setup {}
		end
	})
	require("mason-lspconfig").setup({
      ensure_installed = servers,
      automatic_installation = true,
	})
end

return M
