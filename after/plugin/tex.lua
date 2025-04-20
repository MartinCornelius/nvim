vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex",
    callback = function()
        local out_dir = "out"
        vim.cmd("silent !mkdir " .. out_dir)
        vim.cmd("silent !latexmk -pdf -output-directory=" .. out_dir)
    end,
})
