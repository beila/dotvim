require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

require('lspconfig').lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

vim.keymap.set({ "n" }, "]a",
    function()
        local eo = { severity = vim.diagnostic.severity.ERROR }
        local wo = { severity = vim.diagnostic.severity.WARN }
        local io = { severity = vim.diagnostic.severity.INFO }
        local ho = { severity = vim.diagnostic.severity.HINT }
        local get = vim.diagnostic.get
        local o = get(0, eo) and eo or get(0, wo) and wo or get(0, io) and io or ho
        vim.diagnostic.goto_next(o)
    end,
    {})

vim.keymap.set({ "n" }, "[a",
    function()
        local eo = { severity = vim.diagnostic.severity.ERROR }
        vim.diagnostic.goto_prev(vim.diagnostic.get(0, eo) and eo or {})
    end,
    {})

vim.keymap.set({ "n" }, "}A",
    function() vim.diagnostic.goto_next() end,
    {})

vim.keymap.set({ "n" }, "{A",
    function() vim.diagnostic.goto_prev() end,
    {})

vim.keymap.set({ "n" }, "<leader>aa",
    function() require("fzf-lua").lsp_code_actions() end,
    {})

vim.keymap.set({ "n" }, "<leader>af",
    function() vim.lsp.buf.format() end,
    {})
