local opts = { noremap=true, silent=true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "x", "_x", opts)
vim.keymap.set("n", "<C-c>", ":nohl<CR>")
vim.keymap.set("n", "<leader>cd", "<cmd>NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("v", "p", "_dp", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP"]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d"]])

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function()
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)


        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)


        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)


        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
    end,
})
