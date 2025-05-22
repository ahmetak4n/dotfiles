--
-- DAP - Debug Adapter Protocol
--

return {
  -- path
  "mfussenegger/nvim-dap",
  
  -- plugin's dependencies
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "leoluz/nvim-dap-go",
  },

  -- plugin tag
  tag = "0.10.0",

  -- config
  config = function()
    require("plugins.nvim-dap.config")
  end,
}
