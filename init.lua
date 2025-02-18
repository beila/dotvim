-- https://www.reddit.com/r/neovim/comments/zfimqo/comment/izc156m
local vimrc = vim.fn.stdpath('config') .. '/vimrc.symlink'
vim.cmd.source(vimrc)

-- https://github.com/ThePrimeagen/init.lua/blob/213009d/lua/theprimeagen/remap.lua#L23-L27
vim.keymap.set("x", "p", [["_dP]])
vim.keymap.set("x", "<leader>p", [["_d"+P]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>P", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>Y", [["+Y]])

-- https://neovide.dev/configuration.html#ime
local function set_ime(args)
        if args.event:match("Enter$") then
                vim.g.neovide_input_ime = true
        else
            vim.g.neovide_input_ime = false
        end
end

local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
        group = ime_input,
        pattern = "*",
        callback = set_ime
})

vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
        group = ime_input,
        pattern = "[/\\?]",
        callback = set_ime
})
