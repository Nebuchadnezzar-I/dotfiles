return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local ok, configs = pcall(require, "nvim-treesitter.configs")
        if not ok then
            return
        end

        configs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "lua", "vim", "vimdoc", "rust" },
            auto_install = true,
        })
    end,
}
