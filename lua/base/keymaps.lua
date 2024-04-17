vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clean Up Search Result" })
keymap.set("n", "<leader>ff", ":NvimTreeTogle<CR>", { desc = "Toggle Nvim Tree" })
keymap.set("n", "<leader>ff", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })
keymap.set("n", "f", ":Lspsaga goto_definition<CR>", { desc = "Go to definition" })
keymap.set("n", "F", ":Lspsaga peek_definition<CR>", { desc = "Peek definition" })
keymap.set("n", "D", ":Lspsaga hover_doc<CR>", { desc = "Peek definition" })
