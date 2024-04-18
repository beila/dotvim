vim.cmd("packadd fzf-lua")

local fzf_lua = require("fzf-lua")

fzf_lua.setup_fzfvim_cmds()

vim.keymap.set({ "n", "v", "i" }, "<F8>",
    function() fzf_lua.lsp_document_symbols() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-]>",
    function() fzf_lua.lsp_finder() end,
    {})

fzf_lua.setup({
    fzf_opts = { ['--layout'] = 'reverse-list' },
    lsp = {
        git_icons = true,
        finder = { actions = { ["ctrl-]"] = { function() fzf_lua.lsp_definitions() end } } },
    },
})
