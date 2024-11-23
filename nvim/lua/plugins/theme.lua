
local theme_settings =  { 
  "ellisonleao/gruvbox.nvim", 
  priority = 1000,
  config = function()
    require("gruvbox").setup({
     transparent_mode = true,
     undercurl = true,
     underline = true,
     bold = true,
     italic = {
       strings = true,
       emphasis = true,
       comments = true,
       operators = false,
       folds = true,
     },
     strikethrough = true,
     invert_selection = false,
     invert_signs = false,
     invert_tabline = false,
     invert_intend_guides = false,
     inverse = true, 
     contrast = "hard", 
     palette_overrides = {},
     overrides = {},
     dim_inactive = false,

    })
    vim.o.background = "dark"

    vim.api.nvim_set_hl(0, 'LineNr', { fg = "white"})
    vim.cmd.colorscheme "gruvbox"
    vim.cmd [[highlight LineNr ctermfg=LightGrey guifg=#4B4B4B]]
    vim.cmd [[highlight CursorLine ctermbg=none guibg=none]]
    vim.cmd [[highlight CursorLineNr ctermfg=Yellow guifg=White guibg=none]]
    vim.cmd [[highlight WinSeparator guibg=None guifg=#37393A ]]
  end
}
return theme_settings
