vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clean Up Search Result" })
keymap.set("n", "<leader>ff", ":NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })
keymap.set("n", "f", ":Lspsaga goto_definition<CR>", { desc = "Go to definition" })
keymap.set("n", "Q", ":Lspsaga code_action<CR>", { desc = "Code Action" })
keymap.set("n", "e", ":Lspsaga diagnostic_jump_next <CR>", { desc = "Diagnostic Jump Next" })
keymap.set("n", "E", ":Lspsaga diagnostic_jump_prev <CR>", { desc = "Diagnostic Jump Prev" })
keymap.set("n", "F", ":Lspsaga peek_definition<CR>", { desc = "Peek definition" })
keymap.set("n", "D", ":Lspsaga hover_doc<CR>", { desc = "Peek definition" })
