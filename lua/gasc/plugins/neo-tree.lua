return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        config = function()
            require("neo-tree").setup({
                clipboard = {
                    sync = "global",
                },
                enable_git_status = true,
                enable_diagnostics = false,
                default_component_configs = {
                    name = {
                        trailing_slash = false,
                        use_filtered_colors = true,
                        use_git_status_colors = true,
                        highlight = "NeoTreeFileName",
                    },
                    git_status = {
                        symbols = {
                            added = "",
                            modified = "",
                            deleted = "",
                            renamed = "",
                            untracked = "",
                            ignored = "",
                            unstaged = "",
                            staged = "✓",
                            conflict = "",
                        }
                    },
                    modified = {
                        symbol = "",
                    },
                },
                window = {
                    width = 30,
                },
                filesystem = {
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignore = false,
                    }
                }
                
            })
        end
    }
}
