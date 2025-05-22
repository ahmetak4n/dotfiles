--
-- global variables
--

-- define mapleader
-- default leader is "\"
-- vim.g.mapleader = "\"

-- disable netrw
-- default directory explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


--
-- general settings
-- indent configuration
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

--
-- window-scoped options
--
-- show line absolute number
vim.wo.number = true

--
-- vim commands --
--
-- default color scheme
vim.cmd.colorscheme("habamax")

--
-- markdown preview
--
vim.g.mkdp_filetypes = { "markdown" }

