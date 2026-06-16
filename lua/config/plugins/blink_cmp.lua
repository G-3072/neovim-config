return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets'},
    version = "1.*",
    opts = {
        keymap = {
            preset = "super-tab",
            --['<C-space>'] = {'show', 'show_documentation', 'hide_documentation'},
            --['<C-e>'] = {'hide', 'fallback'},
            --['<CR>'] = {'accept', 'fallback'},
            --['<Tab>'] = {'select_next', 'fallback'},
            --['<S-Tab>'] = { 'select_prev', 'fallback'},
            --['<C-j>'] = {'scroll_documentation_down', 'fallback'},
            --['<C-k>'] = {'scroll_documentation_up', 'fallback'},
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = {
            ghost_text = {
                enabled = true,
            }
        },
        sources = {
        },
    }
}
