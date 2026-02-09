require("lazy").setup({
    { "echasnovski/mini.pick", event = "VeryLazy" },

    { "williamboman/mason.nvim", event = "BufReadPre" },
    { "neovim/nvim-lspconfig", event = "BufReadPre" },
    { "saghen/blink.cmp" },
    { "github/copilot.vim" },

    { "preservim/nerdtree", event = "VeryLazy" },

    { "vague2k/vague.nvim", event = "BufWinEnter" },
})
