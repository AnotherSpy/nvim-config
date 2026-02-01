return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        event = { "BufReadPost", "BufNewFile" },
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua", -- загружать только для lua файлов
                opts = {
                    library = {
                        -- подгружать типы для плагинов (например, для полнотекстового поиска)
                        { path = "luvit-meta/library", words = { "vim%.uv" } },
                    },
                },
            },
            {
                "windwp/nvim-ts-autotag",
                config = function()
                    require("nvim-ts-autotag").setup({
                        opts = {
                            enable_close = true,
                            enable_rename = true,
                            enable_close_on_slash = true
                        }
                    })
                end,
            },
        },
        config = function()
            local configs = require("nvim-treesitter.config")
            configs.setup({
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                indent = { enable = true },
		autotage = { enable = true },
                ensure_installed = {
                    "html", "tsx", "javascript", "vue", "xml", "c", "rust", "lua", "css", "bash", "vim", "php", "vimdoc", "query", "python"
                }
            })
        end,
    }
}
