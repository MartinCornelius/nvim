require("lazy").setup({
    { "rose-pine/neovim", name = "rose-pine", lazy = true },
    { "echasnovski/mini.pick", event = "VeryLazy" },
    { "vague2k/vague.nvim", event = "BufWinEnter" },
    { "williamboman/mason.nvim", event = "BufReadPre" },
    { "neovim/nvim-lspconfig", event = "BufReadPre" },
    { 
        "martincornelius/reword.nvim",
        event = "VeryLazy",
        config = function()
            require("reword").setup({
                persist = true,
            })
        end
    },
    { "saghen/blink.cmp" },
})
