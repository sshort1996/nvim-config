return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- Plugin for navigating between tmux and vim splits seamlessly
  {
      "christoomey/vim-tmux-navigator",
      lazy = false, -- load immediately, as it's a utility plugin
  },

  -- Plugin to run shell commands asynchronously
  {
      "tpope/vim-dispatch",
      cmd = { "Dispatch", "Make", "Focus", "Start" }, -- lazy load only when these commands are called
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
