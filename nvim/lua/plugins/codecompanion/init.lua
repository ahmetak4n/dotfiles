--
-- AI agent support
--

return {
  -- path
  "olimorris/codecompanion.nvim",
  
  -- plugin's dependencies
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  --tag
  tag = "v15.6.0",

  -- config
  config = function()
    require("plugins.codecompanion.config")
  end,
}
