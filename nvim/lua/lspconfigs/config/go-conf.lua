local shared = require('lspconfigs.shared_lsp_config')
local util = require('lspconfig/util')

require("lspconfig").gopls.setup({
  capabilities = shared.capabilities,
  on_attach = shared.on_attach,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      }
    }
  }
})

