vim.cmd("packadd fzf-lua")

local fzf_lua = require("fzf-lua")

fzf_lua.setup_fzfvim_cmds()

vim.keymap.set({ "n", "v", "i" }, "<leader>z",
    function() fzf_lua.builtin() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g><C-f>",
    function() fzf_lua.git_status() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g><C-b>",
    function() fzf_lua.git_branches() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g><C-t>",
    function() fzf_lua.git_tags() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g><C-h>",
    function() fzf_lua.git_commits() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g><C-s>",
    function() fzf_lua.git_stash() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g><C-d>",
    "<Cmd>Git difftool<CR>",
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-g>d",
    function()
        vim.cmd "Git! difftool --name-only --merge-base @{u}"
        vim.cmd "cclose"
        fzf_lua.quickfix()
    end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<leader><tab>",
    function() fzf_lua.tabs() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<F8>",
    function() fzf_lua.lsp_document_symbols() end,
    {})

vim.keymap.set({ "n", "v", "i" }, "<C-]>",
    function() fzf_lua.lsp_finder() end,
    {})

fzf_lua.setup({
    fzf_opts = { ['--layout'] = 'reverse-list' },
    previewers = { git_diff = { cmd_modified = "DFT_WIDTH=$COLUMNS DFT_COLOR=always git diff", } },
    oldfiles = { include_current_session = true },
    lsp = {
        git_icons = true,
        finder = { actions = { ["ctrl-]"] = { function() fzf_lua.lsp_definitions() end } } },
    },
})
