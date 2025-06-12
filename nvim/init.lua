print("yooooooooooooooo")

-- highlight rCursor guifg=white guibg=red
-- highlight nCursor guifg=white guibg=blue
-- highlight iCursor guifg=blue guibg=yellow
-- vim.opt.guicursor = n-v-c:block-nCursor-blinkon0-blinkwait0-blinkoff0,i:hor50-iCursor-blinkwait50-blinkon200-blinkoff50
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%l %r"

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


vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
       
vim.g.mapleader = " "
      
-- Open just enough fold to reveal search term. Useful if I ever enable folding.
vim.keymap.set("n", "n", "nzv")
vim.keymap.set("n", "N", "Nzv")

vim.keymap.set("i", "<C-e>", "<ESC><C-e>a");
vim.keymap.set("i", "<C-y>", "<ESC><C-y>a");


---:: A lot of stuff below here, especially combos of CTRL/ALT/SHIFT w/ <Space>
---:: and <BS>, relies on custom keymappings in my Wezterm config that detect
---:: these key combos and forward them with wezterm.action.SendKey(). Thank you
---:: Wez for making that easy.

-- <SHIFT+[Space/BS]> mimics insert mode for those keys.
vim.keymap.set("n", "<S-Space>", "i <ESC>l")
vim.keymap.set("n", "<S-BS>", "hx")

--------------- Custom Spacing Shortcuts ---------------
---:: These all try to adjust the cursor according to the change. Sometimes
---:: it's going to be off by a couple if it's not deterministic.

-- <CTRL+/> adds "// " to beginning of line
-- <CTRL+'> removes "//[ ]" preceded by any amt of spaces, preserving them.
vim.keymap.set("n", "<C-_>", "mt:s#\\(.*\\)#// \\1<Enter>`t3l")
vim.keymap.set("i", "<C-_>", "<ESC>mt:s#\\(.*\\)#// \\1<Enter>`t3la")
vim.keymap.set("n", "<C-G>", "mt:s#\\(^ *\\)// \\{0,1}\\( *\\)#\\1\\2<Enter>`t3h")
vim.keymap.set("i", "<C-G>", "<ESC>:s#\\(^ *\\)// \\{0,1}\\( *\\)#\\1\\2<Enter>`A")

-- <CTRL+[Space/BS]> adds/removes one space from beginning of line
vim.keymap.set("n", "<C-Space>", "mt:s/\\(.*\\)/ \\1/<Enter>`tl")
vim.keymap.set("n", "<C-H>", "mt:s/^ //<Enter>`th")

-- <CTRL+ALT+[Space/BS]> adds/removes four spaces from beginning of line.
vim.keymap.set("n", "<C-A-Space>", "mt0i    <ESC>`t4l")
vim.keymap.set("n", "<C-A-H>", "mt:s/^ \\{0,4\\}//<Enter>`t4h")

---:: These are the same as above but for multi-line visual mode selection.
---:: They restore the visual selection after the modification and attempt to 
---:: adjust the cursor location accordingly.
vim.keymap.set("x", "<C-_>", ":s#\\(.*\\)#// \\1<Enter>gv3l")
vim.keymap.set("x", "<C-G>", ":s#\\(^ *\\)// *#\\1#e<Enter>gv3h")
vim.keymap.set("x", "<C-Space>", ":s/\\(.*\\)/ \\1/<Enter>gvl")
vim.keymap.set("x", "<C-H>", ":s/^ //<Enter>gvh")
vim.keymap.set("x", "<C-A-Space>", ":s/\\(.*\\)/    \\1/<Enter>gv4l")
vim.keymap.set("x", "<C-A-H>", ":s/^ \\{0,4\\}//<Enter>gv4h")
--------------------------------------------------------


vim.opt.showcmd = true

