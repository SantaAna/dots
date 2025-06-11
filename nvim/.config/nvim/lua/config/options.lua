-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--load tsserver
return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      tsserver = {},
    },
  },
}, {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      prisma = {
        prismaFmtBinPath = "",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        gopls = {},
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        powershell_es = {},
      },
    },
  },
}
