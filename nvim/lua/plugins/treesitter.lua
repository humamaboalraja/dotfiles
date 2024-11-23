return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require "nvim-treesitter.configs"
    config.setup {
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
        "gleam",
        "kotlin",
        "java",
        "sql",

        "odin",
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
        "markdown",
        "vim",
        "vimdoc",

        "javascript",
        "typescript",
        "prisma",
      },
      highlight = {
        enable = true,
        -- use_languagetree = true
      },
      indent = { enable = true },
    }
  end,
}
