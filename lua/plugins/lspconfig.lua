local on_attach = function(client, bufnr)
  vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
  vim.keymap("n", "<space>K", vim.lsp.buf.hover, { buffer = bufnr })
  local opts = { buffer = bufnr }
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)

  vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<C-f>", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

local default_config_servers = {
  "emmet_language_server",
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

local lua_lsp_config = {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

local M = {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
    "folke/neodev.nvim",
	},
}

function M.config()
  local lspconfig = require("lspconfig")

  require("neodev").setup()

  for _, lsp in ipairs(default_config_servers) do
    lspconfig[lsp].setup({
      on_attach = on_attach,
    })
  end

  lspconfig.lua_ls.setup(lua_lsp_config)

  lspconfig.tsserver.setup({
    filetypes = { "jsx", "astro", "js", "mjs" },
  })

  lspconfig.html.setup({
    filetypes = { "html", "php", "js", "astro", "jsx", "tsx" },
  })

  lspconfig.emmet_language_server.setup({
    filetypes = {
      "html",
      "css",
      "scss",
      "javascriptreact",
      "typescriptreact",
      "xml",
      "slim",
      "sass",
      "php",
      "astro",
      "python",
    }
  })
end

return M
