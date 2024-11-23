return {
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = "neovim/nvim-lspconfig",
    ft = "rust",
    opts = function()
      return require "lspconfigs.config.rust-conf"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()

      vim.keymap.set("n", "<leader>ct", crates.toggle, opts)
      vim.keymap.set("n", "<leader>cr", crates.reload, opts)

      vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, opts)
      vim.keymap.set("n", "<leader>cf", crates.show_features_popup, opts)
      vim.keymap.set("n", "<leader>cd", crates.show_dependencies_popup, opts)

      vim.keymap.set("n", "<leader>cu", crates.update_crate, opts)
      vim.keymap.set("v", "<leader>cu", crates.update_crates, opts)
      vim.keymap.set("n", "<leader>ca", crates.update_all_crates, opts)
      vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, opts)
      vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, opts)
      vim.keymap.set("n", "<leader>cA", crates.upgrade_all_crates, opts)

      vim.keymap.set("n", "<leader>cx", crates.expand_plain_crate_to_inline_table, opts)
      vim.keymap.set("n", "<leader>cX", crates.extract_crate_into_table, opts)

      vim.keymap.set("n", "<leader>cH", crates.open_homepage, opts)
      vim.keymap.set("n", "<leader>cR", crates.open_repository, opts)
      vim.keymap.set("n", "<leader>cD", crates.open_documentation, opts)
      vim.keymap.set("n", "<leader>cC", crates.open_crates_io, opts)
      crates.setup {
        src = {
          cmp = {
            enabled = true,
          },
        },
      }
    end,
  },
}
