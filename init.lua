-- https://www.reddit.com/r/neovim/comments/zfimqo/comment/izc156m
local vimrc = vim.fn.stdpath('config') .. '/vimrc.symlink'
vim.cmd.source(vimrc)

-- https://github.com/ThePrimeagen/init.lua/blob/213009d/lua/theprimeagen/remap.lua#L23-L27
vim.keymap.set("x", "p", [["_dP]])
vim.keymap.set("x", "<leader>p", [["_d"+P]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+P]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>Y", [["+Y]])
