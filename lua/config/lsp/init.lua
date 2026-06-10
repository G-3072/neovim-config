local lsp_dir = vim.fn.stdpath("config") .. "/lua/config/lsp"

local servers = {}

for _, file in ipairs(vim.fn.readdir(lsp_dir)) do
    local server = file:match("^(.+)%.lua$")
    if server and server ~= "init" then
        vim.lsp.config(server, require("config.lsp." .. server))
        table.insert(servers, server)
    end
end
