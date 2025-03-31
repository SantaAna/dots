return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        elixirls = {
          settings = {
            elixirLS = {
              dialyzerEnabled = false,
              fetchdeps = false,
            },
          },
        },
        marksman = {},
      },
    },
  },
}
