return {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function(_, opts)
    local gopher = require("gopher").setup(opts)
    vim.keymap.set("n", "<leader>gsj", ":GoTagAdd json<CR>", {})
    vim.keymap.set("n", "<leader>gsy", ":GoTagAdd yaml<CR>", {})
    vim.keymap.set("n", "<leader>gi", ":GoImpl ", {})
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end,
}
