return {
    {
        "Tsuzat/NeoSolarized.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = false
        },
        config = function()
            vim.cmd.colorscheme("NeoSolarized")
            vim.api.nvim_set_hl(0, "Normal", { bg = "#062f39" })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = "NeoSolarized"
        }
    },
}
