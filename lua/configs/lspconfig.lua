-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- Background colors for active vs inactive windows
vim.cmd('hi ActiveWindow guibg=#17252c')
vim.cmd('hi InactiveWindow guibg=#0D1B22')

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


-- Configure Pyright for Python
lspconfig.pyright.setup {
    on_attach = function(client, bufnr)
        local bufopts = { noremap=true, silent=true, buffer=bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)  -- Go to definition
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)        -- Hover documentation
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)  -- Go to implementation
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)  -- Rename
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)  -- List references
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)  -- Code actions
    end,
    flags = {
        debounce_text_changes = 150,
    }
}

