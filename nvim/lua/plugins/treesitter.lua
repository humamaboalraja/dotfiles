return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require "nvim-treesitter.configs"

    -- configure treesitter
    treesitter.setup { -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "lua",
        "rust",
        "zig",
        "c",
        "cpp",
        "cmake",
        "asm",
        "nasm",
        "cuda",
        "go",
        "haskell",
        "elixir",
        "kotlin",
        "sql",

        "glsl",

        "hcl",
        "helm",
        "bash",

        "proto",
        "xml",
        "json",
        "yaml",
        "toml",

        "latex",
        "vim",
        "vimdoc",

        "javascript",
        "typescript",
        "prisma",

        "tsx",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "dockerfile",
        "gitignore",
        "query",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    }
  end,
}
