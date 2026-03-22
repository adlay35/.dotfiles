return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "html",
            "cssls",
            "ts_ls",
            "jdtls",
            "pyright",
            "clangd",
            "rust_analyzer",
            "bashls",
        }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        -- neovim 0.11 supports lsp natively
        -- "neovim/nvim-lspconfig",
    },
}
