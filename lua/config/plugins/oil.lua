return {
    "stevearc/oil.nvim",
    dependencies = {
        {"nvim-mini/mini.icons", opts = { } },
    },
    lazy = false,
    config = function ()
        require("oil").setup({
            keymaps = {
                ["<leader>cd"] = { "actions.cd", mode = "n"},
                ["<leader>ls"] = { "actions.change_sort", mode = "n"},
                ["<leader><CR>"] = {
                    callback = function()
                        local oil_win = vim.api.nvim_get_current_win()
                        require("oil").select({ vertical = true })
                        vim.defer_fn(function()
                            vim.cmd('wincmd L')
                            vim.api.nvim_win_set_width(oil_win, 30)
                        end, 5)
                    end,
                    mode = "n",
                    desc = "open vertical split with oil on left side"
                }
            },
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
                natural_order = true,
                --sort = {}
            }
        })
    end
}
