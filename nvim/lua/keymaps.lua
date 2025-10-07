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

-- utils.remap("<leader>+", "<C-a>", "Clear search higlights")
-- utils.remap("<leader>-", "<C-x>", "Clear search higlights")
--
-- -- window management
-- utils.remap("<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- utils.remap("<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- utils.remap("<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- utils.remap("<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
--
-- utils.remap("<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- utils.remap("<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- utils.remap("<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- utils.remap("<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- utils.remap("<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
--
--
--

local keymap = vim.keymap -- for conciseness
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
