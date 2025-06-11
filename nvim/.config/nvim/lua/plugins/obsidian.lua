return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ot", "<cmd>ObsidianToday<cr>", desc = "opens obsidian note for today" },
    { "<leader>os", "<cmd>ObsidianQuickSwitch<cr>", desc = "quick search by note title" },
    { "<leader>or", "<cmd>ObsidianSearch<cr>", desc = "full text search" },
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "create new note" },
    { "<leader>ol", "<cmd>ObsidianLinks<cr>", desc = "pick links" },
    { "<leader>ob", "<cmd>ObsidianLinks<cr>", desc = "pick back links" },
    { "<leader>ok", mode = "v", "<cmd>ObsidianLinkNew<cr>", desc = "creats a new note and links to current text" },
    { "<leader>ch", "<cmd>ObsidianToggleCheckbox<cr>", desc = "toggles check box" },
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "stelth",
          path = "~/Documents/stelth_notes/stelth/",
        },
        {
          name = "personal",
          path = "~/Documents/personal_notes/",
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      mappings = {
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        -- Toggle check-boxes.
        ["<leader>ch"] = {
          action = function()
            return require("obsidian").util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
        -- Smart action depending on context, either follow link or toggle checkbox.
        ["<cr>"] = {
          action = function()
            return require("obsidian").util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },
      note_path_func = function(spec)
        local path = spec.dir / spec.title
        return path:with_suffix(".md")
      end,
    })
  end,
}
