local servers = {
  "emmet_language_server",
	"lua_ls",
	"clangd",
	"jedi-language-server",
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
	automatic_installation = true,
  ensure_installed = servers,
	config = true,
}
