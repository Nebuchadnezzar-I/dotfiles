return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
        })

        require("nvim-treesitter.parsers").templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ",
                branch = "main",
                queries = "queries/templ",
            },
        }

        ts.install({
            "templ", "go", "html", "c"
        }):wait(300000)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "templ",
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
