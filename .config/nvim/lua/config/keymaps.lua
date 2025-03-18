-- Keymaps are automaticaly loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

----- OIL -----
vim.keymap.set("n", "~", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Position cursor at the center of the screen after scrolling half page --
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Map º to escape from other modes --
vim.keymap.set({ "i", "n", "v" }, "º", [[<C-\><C-n>]])

-- Map h, l in insertion mode to move left and Right --
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
