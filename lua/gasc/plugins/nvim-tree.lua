
return {
    'nvim-tree/nvim-tree.lua',
    version ='*',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup({
            on_attach = custom_on_attach,
            renderer = {
                indent_markers = { enable = true },
                add_trailing = true,
                highlight_git = "name",
                highlight_open_files = "name"
            },
            icons = {
                git_placement = "after",
            },
        })
        local function custom_on_attach(bufnr)
            local api = require('nvim-tree.api')

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end
            -- default mappings
            api.map.on_attach.default(bufnr)
        end
    end
}

