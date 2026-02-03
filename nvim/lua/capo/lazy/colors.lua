return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                disable_background = false,
                disable_float_background = false,
                styles = {
                    italic = false,
                },
            })

            vim.cmd.colorscheme("rose-pine")
        end,
    },
}
