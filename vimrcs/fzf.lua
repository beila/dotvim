require("fzf-lua").setup_fzfvim_cmds()
require("fzf-lua").setup({ fzf_opts = {['--layout'] = 'reverse-list'}, lsp = {git_icons = true, finder = {}} })
vim.keymap.set({ "n", "v", "i" }, "<C-]>",
  function() require("fzf-lua").lsp_finder() end,
  {})
