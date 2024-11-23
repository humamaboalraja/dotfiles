return {
  "goolord/alpha-nvim",

  config = function()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.startify"
    -- felt funny
    -- Generated with - https://www.asciiart.eu/image-to-ascii
    dashboard.section.header.val = {
      "          ▓▒░░░░░░░░░▒█       ",
      "       █░░░           ░░▓█    ",
      "      ▓░                ░░▒█  ",
      "     █░░      ░░░░░░░░░░░░░▒█ ",
      "     ▓░     ░░░░░░░░░░░░░░░░▒ ",
      "    █▒░       ░░░░░░   ░░░░░▒▓",
      "    █░░           ░░░  ░░ ░░░▓",
      "    █▒░       ░▒▓█▓░   ░▒▓▓░░▓",
      "     █░        ░░░░░   ░░░░░░▓",
      "      █░ ░░░           ▒░░   ▒",
      "       █░░░░      ░▒░░░░░░  ░▓",
      "       █▒ ░░░     ░░░░░▒░  ░▒ ",
      "       █▒ ░░░░░  ░░▒▒░░▒░ ░▒  ",
      "       ▓░ ░░░░░▒░   ░░░░░░▒▓  ",
      "      █▒       ░░▒░    ░▒▓    ",
      "     █░░░░▒░      ░░░░█       ",
      "▒▓▒▒░░░ ░░    ░░ ░ ░░ ░░░░░░▒▒",
      "              ░░░░░░          ",
    }
    dashboard.section.bottom_buttons.val = {
      dashboard.button("e", "Nf", ":ene <BAR> startinsert <CR>"),
    }
    dashboard.section.top_buttons.val = {}

    dashboard.section.mru.val = { { type = "padding", val = 0 } }
    dashboard.nvim_web_devicons.enabled = false

    alpha.setup(dashboard.opts)
  end,
}
