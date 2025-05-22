-- import codecompanion
local codecompanion = require("codecompanion")

-- setup codecompanion
codecompanion.setup({
  strategies = {
    chat = {
      adapter = "llm_dev",
    },

    inline = {
      adapter = "llm_dev",
      keymaps = {
        accept_change = {
          modes = { n = "ga" },
          description = "Accept the suggested change",
        },
        reject_change = {
          modes = { n = "gr" },
          description = "Reject the suggested change",
        },
      },
    },

    cmd = {
      adapter = "llm_dev"
    },
  },

  -- lm-studio configuration
  adapters = {
    llm_dev = function()
      return require("codecompanion.adapters").extend("openai_compatible", {
        env = {
          url = "http://localhost:1234",
          models_endpoint = "/v1/models",
          chat_url = "/v1/chat/completions",
        },
      })
    end,
  },
})

