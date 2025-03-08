print("yooooooooooooooo")

-- highlight rCursor guifg=white guibg=red
-- highlight nCursor guifg=white guibg=blue
-- highlight iCursor guifg=blue guibg=yellow
-- vim.opt.guicursor = n-v-c:block-nCursor-blinkon0-blinkwait0-blinkoff0,i:hor50-iCursor-blinkwait50-blinkon200-blinkoff50
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

-- CMS?vim.opt.swapfile = false
-- CMS?vim.opt.backup = false
vim.opt.undodir = os.getenv("USERPROFILE") .. "\\.vim\\undo-dir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- May want to turn this off when you choose a different theme
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- CMS mine below here
vim.opt.showcmd = true

