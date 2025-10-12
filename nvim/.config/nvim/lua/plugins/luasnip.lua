local ls = require("luasnip")
return {
  "L3MON4D3/LuaSnip",
  keys = {
    {
      "<C-l>",
      mode = { "i", "s" },
      function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end,
    },
    {
      "<C-h>",
      mode = { "i", "s" },
      function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
    },
  },
}
