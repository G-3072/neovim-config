
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup({
            options = {
                theme = 'auto',
                section_separators = '',
                component_separators = '|',
                disabled_filetypes = {
                    statusline = { },
                    winbar = { "neo-tree" },
                },
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                    refresh_time = 16, -- ~60fps
                    events = {
                        'WinEnter',
                        'BufEnter',
                        'BufWritePost',
                        'SessionLoadPost',
                        'FileChangedShellPost',
                        'VimResized',
                        'Filetype',
                        'CursorMoved',
                        'CursorMovedI',
                        'ModeChanged',
                    },
            },
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {},
                lualine_x = {'searchcount'},
                lualine_y = {'encoding', 'fileformat', 'filetype'},
                lualine_z = {}
            },
            inactive_sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff'},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {
                --lualine_a = {},
                --lualine_b = {},
                --lualine_c = {},
                --lualine_x = {},
                --lualine_y = {},
                --lualine_z = {}
            },
            winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            inactive_winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            }
            })
        end            
    }
