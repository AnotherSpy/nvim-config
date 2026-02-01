vim.lsp.config('asm_lsp', {
    cmd = { 'asm-lsp' },

    filetypes = { 'asm', 's', 'S', 'inc' },
    root_markers = { '.asm-lsp.toml', '.git' },
})

vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=never"
    },
})

vim.lsp.config("lua_ls", {})

vim.lsp.enable("asm_lsp")
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
