vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set('n','<leader>ff',":Telescope file_browser<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>", {})
keymap.set('n','<leader>tt',':NvimTreeToggle<CR>')
keymap.set('n','<leader>tf',':NvimTreeFocus<CR>')

