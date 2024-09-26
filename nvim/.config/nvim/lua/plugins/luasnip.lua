local ls = require("luasnip")
return {
  "L3MON4D3/LuaSnip",
  keys = function()
    return {
      {
        mode = { "i", "n" },
        "<C-K>",
        function()
          ls.expand()
        end,
        desc = "expand snippet node",
      },
      {
        mode = { "i", "n" },
        "<C-J>",
        function()
          ls.jump(-1)
        end,
        desc = "jump to previous snippet loc",
      },
      {
        mode = { "i", "n" },
        "<C-j>",
        function()
          ls.jump(1)
        end,
        desc = "jump to next snippet loc",
      },
    }
  end,
}
