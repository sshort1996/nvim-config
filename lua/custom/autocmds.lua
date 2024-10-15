-- ~/.config/nvim/lua/custom/autocmds.lua

-- Create an autocommand group for terminal settings
vim.api.nvim_create_augroup('TerminalSettings', { clear = true })

-- Disable line numbers in terminal buffers
vim.api.nvim_create_autocmd('TermOpen', {
  group = 'TerminalSettings',
  pattern = '*',
  command = 'setlocal nonumber norelativenumber'
})

-- Background colors for active vs inactive windows
vim.cmd('hi ActiveWindow guibg=#2C2F33')
vim.cmd('hi InactiveWindow guibg=#23272A')

-- Define the function to change highlight groups of active/inactive windows
local function handle_win_enter()
  vim.wo.winhighlight = "Normal:ActiveWindow,NormalNC:InactiveWindow"
end

-- Set up an autocommand group for window management
vim.api.nvim_create_augroup('WindowManagement', { clear = true })
vim.api.nvim_create_autocmd('WinEnter', {
  group = 'WindowManagement',
  callback = handle_win_enter,
})
