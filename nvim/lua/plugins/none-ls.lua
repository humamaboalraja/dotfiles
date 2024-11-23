return {
  "nvimtools/none-ls.nvim",

  ft = { "c", "cpp", "h", "hpp", "go", "lua", "typescript" },
  config = function()
    local null_ls = require "null-ls"
    local b = null_ls.builtins
    local sources = {
      b.formatting.stylua.with { filetypes = { "lua" } },
      b.formatting.clang_format.with { filetypes = { "c", "cpp", "h", "hpp" } },

      b.formatting.gofumpt.with { filetypes = { "go" } },
      b.formatting.goimports_reviser.with { filetypes = { "go" } },
      b.formatting.golines.with { filetypes = { "go" } },

      b.formatting.ktlint.with { filetypes = { "kotlin" } },
      b.diagnostics.ktlint.with { filetypes = { "kotlin" } },

      -- null_ls.builtins.formatting.codelldb,
      -- null_ls.builtins.diagnostics.rust_analyzer,
      b.formatting.prettier.with { filetypes = { "typescript", "javascript" } },
      -- null_ls.builtins.diagnostics.eslint_d,
    }
    null_ls.setup { sources = sources }
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        -- Check if null-ls is attached to the current buffer
        if vim.lsp.buf_get_clients(0) then
          vim.lsp.buf.format { async = false } -- set to true to disable auto formatting
        end
      end,
    })
  end,
}
