return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  opts = {},
  config = function()
    require("oil").setup({
      columns = { "icon" },
      keymaps = {
        ["<C-h>"] = false,
        ["<C-z>"] = "actions.select_split",
        ["<C-l>"] = false,
        ["<C-y>"] = "actions.refresh",
      },
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in oil" }),
    })
  end,
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
