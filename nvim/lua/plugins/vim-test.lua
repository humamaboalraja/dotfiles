local utils = require "utils"

return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
        utils.nnoremap("<leader>t", ":TestNearest<cr>"),
  utils.nnoremap("<leader>T", ":TestFile<cr>"),
  utils.nnoremap("<leader>a", ":TestSuite<cr>"),
  utils.nnoremap("<leader>l", ":TestLast<cr>"),
  utils.nnoremap("<leader>g", ":TestVisit<cr>"),
  vim.cmd "let test#strategy = 'vimux'",
}
