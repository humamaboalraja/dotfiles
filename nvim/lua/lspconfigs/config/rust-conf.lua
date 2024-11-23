local shared = require "lspconfigs.shared_lsp_config"
--local util = require('lspconfig/util')

--require("lspconfig").rust_analyzer.setup({
--  capabilities = shared.capabilities,
--  on_attach = shared.on_attach,
--  filetypes = { "rust" },
--  root_dir = util.root_pattern("Cargo.toml"),
--
--  settings = {
--    ['rust-analyzer'] = {
--      cargo = {
--        allFeatures = true,
--      }
--    }
--  },
--})

local options = {
  server = {
    on_attach = shared.on_attach,
    capabilities = shared.capabilities,
  },
}

return options
