require("lazy").setup({
    { "echasnovski/mini.pick", event = "VeryLazy" },

    { "williamboman/mason.nvim", event = "BufReadPre" },
    { "neovim/nvim-lspconfig", event = "BufReadPre" },
    { "saghen/blink.cmp" },
    -- { "github/copilot.vim" },

    { "ntpeters/vim-better-whitespace", event = "VeryLazy" },

    { "projekt0n/github-nvim-theme", event = "bufWinEnter" },
    { "folke/tokyonight.nvim", event = "bufWinEnter" },
})
