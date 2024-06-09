local servers = {
  "emmet_language_server",
	"lua_ls",
	"clangd",
	"jedi_language_server",
	"bashls",
  "jsonls",
  "html",
  "cmake",
  "cssls",
  "tsserver",
  "vimls",
}

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
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
}
