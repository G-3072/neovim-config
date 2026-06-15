return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "asm_lsp",
                "clangd",
                "cmake",
                "lua_ls",
                "pyre",
                "rust_analyzer",
                "tinymist"
            }
        })
    end
}
