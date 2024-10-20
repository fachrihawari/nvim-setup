local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate buffers
keymap("n", "<tab>", ":bnext<cr>", opts) -- Next tab 
keymap("n", "<s-tab>", ":bprevious<cr>", opts) -- Previous tab
keymap("n", "<leader>w", ":bd | bprevious<cr>", opts) -- Close tab
keymap("n", "<leader>e", ":NvimTreeFocus<cr>", opts) -- Focus to file explorer