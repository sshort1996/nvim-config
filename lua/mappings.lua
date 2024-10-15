require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map shift+opt+3 to # 
vim.api.nvim_set_keymap('n', '<M-#>', '#', { noremap = true })
vim.api.nvim_set_keymap('i', '<M-#>', '#', { noremap = true })
vim.api.nvim_set_keymap('v', '<M-#>', '#', { noremap = true })

-- map CapsLock to esc
if vim.fn.has("gui_running") == 1 then
  vim.fn.system('setxkbmap -option caps:escape')
end

vim.api.nvim_set_keymap('i', '<CapsLock>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<CapsLock>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<CapsLock>', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<CapsLock>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<CapsLock>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<CapsLock>', '<Esc>', { noremap = true, silent = true })

-- find hidden files
vim.api.nvim_set_keymap('i', '<leader>fh', ":lua require('telescope.builtin').find_files({ hidden = true })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ":lua require('telescope.builtin').find_files({ hidden = true })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>fh', ":lua require('telescope.builtin').find_files({ hidden = true })<CR>", { noremap = true, silent = true })
-- grep hidden files
vim.api.nvim_set_keymap('i', '<leader>fg', ":lua require('telescope.builtin').live_grep({ hidden = true })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ":lua require('telescope.builtin').live_grep({ hidden = true })<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>fg', ":lua require('telescope.builtin').live_grep({ hidden = true })<CR>", { noremap = true, silent = true })

-- Remap 'c' in normal mode to use the black hole register
vim.api.nvim_set_keymap('n', 'c', '"_c', { noremap = true, silent = true })

-- Remap 'c' in visual mode to use the black hole register
vim.api.nvim_set_keymap('x', 'c', '"_c', { noremap = true, silent = true })

