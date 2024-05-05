vim.g.mapleader = " "

local keymap = vim.keymap

-- jk as ESC
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})

-- netrw keymap
keymap.set("n", "<leader>pf", vim.cmd.Ex, { desc = "Netrw keymap"})

-- clear searched highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"})

-- keymap for accessing netrw
-- keymap.set("n", "<leader>pf", vim.cmd.Ex, { desc = "Open netrw"})
