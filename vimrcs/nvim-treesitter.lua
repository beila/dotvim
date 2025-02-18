require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "awk", "bash", "cmake", "cpp", "css", "csv", "diff", "dockerfile", "dot", "doxygen", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "glsl", "gnuplot", "groovy", "haskell", "html", "idl", "javascript", "json", "json5", "kotlin", "lua", "make", "markdown", "markdown_inline", "passwd", "perl", "printf", "proto", "python", "regex", "rst", "rust", "sql", "ssh_config", "toml", "typescript", "udev", "vim", "vimdoc", "xml", "yaml" },
    auto_install = true,
    highlight = { enable = true, },
    indent = { enable = true, },
    -- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/#4-install-tree-sitter-and-set-it-up-with-the-tree-sitter-rust-parser
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
}
