-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.neovide then
  vim.o.guifont = "SauceCodePro Nerd Font Mono:h14"
  vim.g.neovide_position_animation_length = 0.0
  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 1.0
end
vim.opt.relativenumber = false
