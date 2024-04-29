local lsp_zero = require('lsp-zero')

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

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        exclude = { "<F2>", "<F3>", "[d", "]d" },
        preserve_mappings = false,
    })

    vim.keymap.set({ "n" }, "]d",
        function()
            local eo = { severity = vim.diagnostic.severity.ERROR }
            local wo = { severity = vim.diagnostic.severity.WARN }
            local io = { severity = vim.diagnostic.severity.INFO }
            local ho = { severity = vim.diagnostic.severity.HINT }
            local has = function(o) return next(vim.diagnostic.get(0, o)) ~= nil end
            local o = has(eo) and eo or has(wo) and wo or has(io) and io or ho
            vim.diagnostic.goto_next(o)
        end,
        {})

    vim.keymap.set({ "n" }, "[d",
        function()
            local eo = { severity = vim.diagnostic.severity.ERROR }
            local wo = { severity = vim.diagnostic.severity.WARN }
            local io = { severity = vim.diagnostic.severity.INFO }
            local ho = { severity = vim.diagnostic.severity.HINT }
            local has = function(o) return next(vim.diagnostic.get(0, o)) ~= nil end
            local o = has(eo) and eo or has(wo) and wo or has(io) and io or ho
            vim.diagnostic.goto_prev(o)
        end,
        {})

    vim.keymap.set({ "n", "v" }, "}D",
        function() vim.diagnostic.goto_next() end,
        {})

    vim.keymap.set({ "n", "v" }, "{D",
        function() vim.diagnostic.goto_prev() end,
        {})

    vim.keymap.set({ "n", "v" }, "<leader>aa",
        function() require("fzf-lua").lsp_code_actions() end,
        {})

    vim.keymap.set({ "n", "v" }, "<leader>af",
        function() vim.lsp.buf.format() end,
        {})
end)
