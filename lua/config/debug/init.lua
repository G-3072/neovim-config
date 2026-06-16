local mason_dap = require("mason-nvim-dap")
local dap = require("dap")
local dapui = require("dapui")
local dap_virtual_text = require("nvim-dap-virtual-text")

vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F10>", dap.step_into)
vim.keymap.set("n", "<F11>", dap.step_over)
vim.keymap.set('n', '<F12>', dap.step_out)
vim.keymap.set('n', '<F6>', dap.terminate)
vim.keymap.set('n', '<F7>', dap.restart)

dap_virtual_text.setup()

mason_dap.setup({
    ensure_installed = {
        "codelldb",
        "debugpy",
        "cortex-debug"
    },
    automatic_installation = true,
    handlers = {
        function (config)
            require("mason-nvim-dap").default_setup(config)
        end
    }
})

-- configurations

dap.configurations = {
    python = {
        {
            type = 'python',
            request = 'launch',
            name = 'Launch file',
            program = '${file}',  -- debugs the current file
            pythonPath = function()
                return 'python3'
            end,
        },
    },
    c = {
        {
            name = "launch executable",
            type = "codelldb",
            request = "launch",
            program = function ()
                return vim.fn.input("executable path: ", vim.fn.getcwd() .. "/", "file")
            end,
            cwd = "${workspaceFolder}",
            stopOnEntry = false,
        },
    },
}

require("config.debug.debugpy")

dapui.setup()
vim.fn.sign_define("DapBreakpoint", { text = "●"})

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end
