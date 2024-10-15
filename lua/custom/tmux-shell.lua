-- Define the function to send the buffer content to the shell script
local function run_shell_script()
    local content = vim.fn.join(vim.fn.getline(1, '$'), ' ')
    local command = "tmux send-keys -t :0.1 'bash echo.sh \"" .. content .. "\"' Enter"
    vim.fn.system(command)
end
-- Register the function in the global namespace
_G.run_shell_script = run_shell_script

-- Set up the keybinding for <leader>rf
vim.api.nvim_set_keymap('n', '<leader>rf', '<cmd>lua run_shell_script()<CR>', { noremap = true, silent = true })

