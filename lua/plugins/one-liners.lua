return {
    "neovim/nvim-lspconfig",
    "ojroques/vim-oscyank",
    "tpope/vim-fugitive",
    { "HiPhish/rainbow-delimiters.nvim", submodules = false },
    { "m4xshen/hardtime.nvim", lazy = false, dependencies = { "MunifTanjim/nui.nvim" }, opts = {}, },
    { "brenoprata10/nvim-highlight-colors", config = function() require("nvim-highlight-colors").setup({}) end }
}
