-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local f = io.open("vim.env", "r")
    if f ~= nil then
      io.close(f)
      vim.cmd("Dotenv vim.env")
    else
      return
    end
  end,
})
