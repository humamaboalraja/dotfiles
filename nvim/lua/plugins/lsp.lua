local utils = require "utils"
local shared = require "lspconfigs.shared_lsp_config"

local languages = {
  "lua_ls",
  "rust_analyzer",
  "zls",
  "clangd",
  "asm_lsp",
  "gopls",
  "ols",
  "elixirls",
  "yamlls",
  -- "hls",
  "kotlin_language_server",
  "jdtls",
  "tsserver",
  "terraformls",
  "bashls",
  "tailwindcss",
}
local formatters_and_linters = {
  "stylua",
  "clang-format",
  "rustfmt",
  "gofumpt",
  "goimports-reviser",
  "golines",
  "codelldb",
  "delve",
  "prettier",
  "eslint_d",
  "cpptools",
}
local configured_lsp = {
  -- rust_analyzer = true,
  gopls = true,
  -- manually configured language server go here
}

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason Tool Installer
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    after = "mason.nvim",
    config = function()
      require("mason-tool-installer").setup {
        ensure_installed = utils.merge_tables(languages, formatters_and_linters),
        auto_update = false,
        run_on_start = true,
      }
    end,
  },

  -- Mason LSP Config
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    -- opts = { auto_install = true },
  },

  -- NVIM LSP Config
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require "lspconfig"
      -- Fallback for LSPs without a custom configuration
      for _, ls_name in pairs(languages) do
        if not configured_lsp[ls_name] then
          lspconfig[ls_name].setup {
            capabilities = shared.capabilities,
            on_attach = shared.on_attach,
          }
        end
      end
      -- custom configured lsp
      -- require("lspconfigs.rust-tools")
      require "lspconfigs.config.go-conf"
    end,
  },
}
