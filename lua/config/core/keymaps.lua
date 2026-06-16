local opts = { noremap = true, silent = true}
vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>qw", vim.cmd.wq)
vim.keymap.set("n", "<leader>qq", vim.cmd.q)
vim.keymap.set("n", "<leader>qa", vim.cmd.qa)
vim.keymap.set("n", "<leader>e", "<Cmd>Oil<CR>")

vim.keymap.set("n", "<leader>tv", "<C-w>v<C-w>l<Cmd>te<CR>i")
vim.keymap.set("n", "<leader>th", "<C-w>s<C-w>j<Cmd>te<CR>i")

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { silent = true })
vim.keymap.set("n", "<leader>o", "o<Esc>0", opts)
vim.keymap.set("n", "<leader>O", "O<Esc>0", opts)
vim.keymap.set("n", "<leader>ww", vim.cmd.w)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "p", '"_dp', opts)
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>x", '"_x', opts)

vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], opts)

vim.keymap.set("n", "<leader>tt", "<C-w>s<C-w>j<Cmd>te<CR>:resize -10<CR>i", opts)

vim.keymap.set("n", "<leader>ee", function ()
    vim.cmd("wincmd v")
    vim.cmd("wincmd l")
    vim.cmd("wincmd H")
    vim.cmd("Oil")
    vim.api.nvim_win_set_width(vim.api.nvim_get_current_win(), 30)
end)

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<C-w>q")
