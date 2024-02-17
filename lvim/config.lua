-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.shiftwidth = 2        -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2           -- insert 2 spaces for a tab
vim.opt.softtabstop = 2
vim.opt.relativenumber = true -- relative line numbers
vim.opt.wrap = true           -- wrap lines
vim.opt.background = "dark"

lvim.builtin.indentlines.options.char = ""
lvim.builtin.bufferline.active = false

lvim.plugins = {
  { 'nyoom-engineering/oxocarbon.nvim' },
  { "catppuccin/nvim" },
  { "ribru17/bamboo.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "savq/melange-nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "ionide/Ionide-vim" }
}

lvim.colorscheme = "gruvbox"
vim.cmd("let &fcs='eob: '")

lvim.autocommands = {
  {
    "BufEnter",
    {
      pattern = { "*.cs", "*.php", "*.py", "*.prisma", "*.fs" },
      command = "setlocal tabstop=4 softtabstop=4 shiftwidth=4",
    }
  }
}
