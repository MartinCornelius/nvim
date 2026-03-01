require("lazy").setup({
    { "echasnovski/mini.pick", event = "VeryLazy" },

    { "williamboman/mason.nvim", event = "BufReadPre" },
    { "neovim/nvim-lspconfig", event = "BufReadPre" },
    { "saghen/blink.cmp" },
    { "github/copilot.vim" },

    { "preservim/nerdtree", event = "VeryLazy" },
    { "ntpeters/vim-better-whitespace", event = "VeryLazy" },

    { "vague2k/vague.nvim", event = "BufWinEnter" },
    { "eemed/sitruuna.vim", event = "bufWinEnter" },
    { "EdenEast/nightfox.nvim", event = "bufWinEnter" },
    { "projekt0n/github-nvim-theme", event = "bufWinEnter" },
    { "folke/tokyonight.nvim", event = "bufWinEnter" },
    { "kwsp/halcyon-neovim", event = "bufWinEnter" },
    { "morhetz/gruvbox", event = "bufWinEnter" },
})
