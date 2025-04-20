return {
    -- Core plugins
    { "nvim-lua/plenary.nvim", lazy = true },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  
    -- Telescope (lazy-load on command)
    {
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      dependencies = { "nvim-lua/plenary.nvim" },
      version = "0.1.8",
      config = function()
        require("telescope").setup()
      end,
    },
  
    -- Git
    {
      "tpope/vim-fugitive",
      cmd = { "Git", "G" },
      keys = {
        { "<leader>gs", ":Git<CR>", desc = "Git status" },
      }
    },
  
    -- LSP Zero
    {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v1.x",
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
    { "townk/vim-autoclose", event = "InsertEnter" },
    { "theprimeagen/harpoon", lazy = true },

    -- Haxe
    { "kLabz/haxe.vim", lazy = true },
  
    -- Themes (lazy-loaded only if set)
    { "folke/tokyonight.nvim", lazy = false },
    { "rose-pine/neovim", name = "rose-pine", lazy = false },
    { "ellisonleao/gruvbox.nvim", lazy = false },
    { "oxfist/night-owl.nvim", lazy = false },
    { "shaunsingh/nord.nvim", lazy = false },
    { "projekt0n/github-nvim-theme", lazy = false },
  }
  
