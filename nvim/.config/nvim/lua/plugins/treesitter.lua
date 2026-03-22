return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "c",
        "python",
        "java",
        "rust",
        "javascript",
        "typescript",
        "css",
        "html",
        "lua",
        "bash",

        "json",
        "toml",
        "yaml",
        "sql",
        "dockerfile",

        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
      },
    },
  }
}
