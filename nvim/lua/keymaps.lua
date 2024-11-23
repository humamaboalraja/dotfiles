local utils = require "utils"

utils.nnoremap("<leader>w", ":write<cr>")
utils.nnoremap("<leader>wa", ":wall<cr>")

utils.nnoremap("<leader>th", ":FloatermNew --height=0.2 --wintype=split --title='FT' --autoclose=2<cr>")
utils.nnoremap("<leader>tv", ":FloatermNew --width=0.3 --wintype=vsplit --title='FT' --autoclose=2<cr>")
utils.nnoremap("<leader>tf", ":FloatermNew --height=0.2 --wintype=float --title='FT' --autoclose=2<cr>")
utils.nnoremap(
  "<leader>tb",
  ":FloatermNew --height=0.6 --width=0.3 --wintype=float --name=Ftb --title='FTB' --position=bottomright --autoclose=2<cr>"
)
