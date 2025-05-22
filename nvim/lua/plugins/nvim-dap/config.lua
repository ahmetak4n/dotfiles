-- import dap, dapui and dap-go
local dap, dapui, dapgo = require("dap"), require("dapui"), require("dap-go")

-- setup dapui and dapgo
dapui.setup({})
dapgo.setup({})

-- listeners
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
