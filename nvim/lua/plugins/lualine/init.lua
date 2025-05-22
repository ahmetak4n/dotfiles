--
-- Configurable statusbar
--

return {
  -- path
  "nvim-lualine/lualine.nvim",
  
  -- plugin's dependencies
  dependencies = { 
    "nvim-tree/nvim-web-devicons",
  },

  -- plugin tag
  -- TODO - Plugin doesn't use tag
  -- tag = "?"

  -- config
  config = function()
    require("plugins.lualine.config")
  end,
}
