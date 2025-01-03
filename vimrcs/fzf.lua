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
    function()
        vim.cmd "Git! difftool"
        vim.cmd "cclose"
        fzf_lua.quickfix()
    end,
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

vim.keymap.set({ "n", "v" }, "<leader> ",
    function() fzf_lua.resume() end,
    {})

local actions = require "fzf-lua.actions"
fzf_lua.setup({
    keymap = {
        --[[
           [builtin = {
        00644
        --- a/build-tools/utils.ts
        --- +++ b/build-tools/utils.ts
        --- @@ -59,7 +59,7 @@ export const runCmdWithArgs = (cmd: string, args?: string[], options?: any): str
        ---
        ---  const brazilPathCache: { [key: string]: string } = {
        ---       "[AVLivingRoomNativeBundle@1.0]pkg.configfarm.lib":
        ---       -        "/Volumes/workplace/avlrc-rel/src/AVLivingRoomClientBundle/build/private/tmp/brazil-path/[AVLivingRoomNativeBundle-1.0]pkg.configfarm.lib"
        ---       +        "/home/hojin/dev/avlrrcbundle/src/AVLivingRoomClientBundle/build/private/tmp/brazil-path/[AVLivingRoomNativeBundle-1.0]pkg.configfarm.lib"
        ---        };
        ---
        ---         function getBrazilBuildPath(brazilPkg: string, majorVersion: string, dir: string): string {
        ---
    grep = {
        rg_opts = '--follow --column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e',
        rg_glob = true,
        -- first returned string is the new search query
        -- second returned string are (optional) additional rg flags
        -- @return string, string?
        rg_glob_fn = function(query)
            local regex, flags = query:match("^(.-)%s%-%-(.*)$")
            -- If no separator is detected will return the original query
            return (regex or query), flags
        end,
        actions = {
            ["ctrl-r"] = { actions.toggle_ignore },
            ["ctrl-w"] = { function(_, opts) actions.toggle_flag(_, vim.tbl_extend("force", opts, { toggle_flag = '--word-regexp' })) end },
        }
    },
    previewers = {
        git_diff = {
            cmd_modified =
            "DFT_WIDTH=$COLUMNS DFT_COLOR=always git diff {file}; \
             DFT_WIDTH=$COLUMNS DFT_COLOR=always git diff --staged {file}",
        }
    },
    oldfiles = { include_current_session = true },
    lsp = {
        git_icons = true,
        finder = { actions = { ["ctrl-]"] = { function() fzf_lua.lsp_definitions() end } } },
    },
})
