return {
  -- Core plugins
  { "echasnovski/mini.pick", lazy = false },
  { "nvim-treesitter/nvim-treesitter" },
  
  -- LSP Zero
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",

      -- Autocompletion
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",

      -- Snippets
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
  },

  -- Handy utils
  { "tpope/vim-commentary", event = "VeryLazy" },
 
  -- Themes (lazy-loaded only if set)
  { "projekt0n/github-nvim-theme", lazy = false },
  { "folke/tokyonight.nvim", lazy = false },
  { "vague2k/vague.nvim", lazy = false },
  { "ellisonleao/gruvbox.nvim", lazy = false },
  { "eemed/sitruuna.vim", lazy = false },
}

