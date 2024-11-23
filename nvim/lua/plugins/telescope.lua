return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require "telescope.builtin"
      local tc = require "telescope"
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- Find files
      vim.keymap.set("n", "<leader>fa", function()
        builtin.find_files { follow = true, no_ignore = true, hidden = true }
      end, { noremap = true, silent = true })                                  -- Find all
      vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})                 -- Live grep
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})                   -- find in buffers
      vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})                  -- find in old files
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})                 -- help page
      vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, {}) -- find in current buffer
      vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find Word under Cursor" })
      vim.keymap.set("n", "<leader>fc", builtin.git_bcommits, { desc = "Search Git Commits for Buffer" })
      vim.keymap.set("n", "<leader>/", function()
        require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
          winblend = 0,
          previewer = false,
          layout_config = { width = 0.7 },
        })
      end, { desc = "[/] Fuzzily search in current buffer" })
      vim.keymap.set("n", "<leader>gt", builtin.git_status)

      tc.setup {
        defaults = {
          vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
          },
          prompt_prefix = " ◆ ",
          selection_caret = "  ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "bottom",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = { "node_modules" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          path_display = { "truncate" },
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          color_devicons = false,
          set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
          file_previewer = require("telescope.previewers").vim_buffer_cat.new,
          grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
          -- Developer configurations: Not meant for general override
          buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
          mappings = {
            n = { ["q"] = require("telescope.actions").close },
          },
        },
        --- Hide telescope's file icons
        pickers = {
          find_files = {
            -- hidden = true,
            find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" },
            disable_devicons = true,
          },
        },
      }
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {},
          },
        },
      }
      require("telescope").load_extension "ui-select"
    end,
  },
}
