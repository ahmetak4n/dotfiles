--
-- Completion support plugin
--

return {
  -- path
  "saghen/blink.cmp",
  
  -- plugin's dependencies
  dependencies = { "rafamadriz/friendly-snippets" },
  
  -- plugin tag
  tag = "v1.3.1",
 
  -- options
  opts = function()
    return require("plugins.blink.opts")
  end,

  -- extended options
  opts_extend = { "sources.default" },
}
