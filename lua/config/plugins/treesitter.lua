return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ':TSUpdate',
    config = function ()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'asm',
                'bash',
                'c',
                'cmake',
                'cpp',
                'css',
                'gdscript',
                'html',
                'linkerscript',
                'lua',
                'make',
                'objdump',
                'python',
                'rust',
                'typst',
                'vim',
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = { },
                additional_vim_regex_highlighting = false,
            }
        })
    end
}
