require("lazy").setup({
    { "echasnovski/mini.pick", event = "VeryLazy" },
    { "williamboman/mason.nvim", event = "BufReadPre" },
    { "neovim/nvim-lspconfig", event = "BufReadPre" },
    { "saghen/blink.cmp" },
    { "github/copilot.vim" },

    { "vague2k/vague.nvim", event = "BufWinEnter" },
    { "rose-pine/neovim", name = "rose-pine", lazy = true },
    { "folke/tokyonight.nvim", lazy = false },
})
