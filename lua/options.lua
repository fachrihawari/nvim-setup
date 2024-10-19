local opt = vim.opt

opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.expandtab = true -- Use spaces instead of tabs
opt.laststatus = 0 -- Dont show status bar since we have a lualine
opt.showmode = false -- Dont show mode since we have a lualine
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.tabstop = 2 -- Number of spaces tabs count for
opt.undofile = true
opt.undolevels = 10000
opt.termguicolors = true -- True color support, used by lualine, nvim-tree, telescope, and many plugins
opt.smartindent = true -- Insert indents automatically
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.completeopt = "menu,menuone,noselect,preview"
opt.cursorline = true -- Enable highlighting of the current line
opt.ignorecase = true -- Ignore case
opt.list = true -- Show some invisible characters (tabs...
opt.relativenumber = true -- Relative line numbers
opt.wrap = false -- Disable line wrap

-- opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
-- opt.shortmess:append { W = true, I = true, c = true }
-- opt.sidescrolloff = 8 -- Columns of context
-- opt.timeoutlen = 500 -- speed must be under 500ms inorder for keys to work, increase if you are not able to.
-- opt.wildmode = "longest:full,full" -- Command-line completion mode
-- opt.winminwidth = 5 -- Minimum window width

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

