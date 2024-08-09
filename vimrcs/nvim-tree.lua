-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup {
    actions = { open_file = { quit_on_open = true, window_picker = { enable = false }, }, },
}

vim.keymap.set({ "n", "v" }, "<leader>n",
    function()
        require('nvim-tree.api').tree.find_file({ update_root = true, open = true, focus = true, })
    end,
    {})
