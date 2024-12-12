local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Copy entier file
vim.api.nvim_set_keymap('n', '<leader>yy', ':%y<CR>', { noremap = true, silent = true })

-- Back to esc
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- add new empty line bottom
vim.api.nvim_set_keymap('n', 'o', 'o<Esc>', { noremap = true, silent = true })

-- add new empty line top
vim.api.nvim_set_keymap('n', 'O', 'O<Esc>', { noremap = true, silent = true })

-- copy 1 line
vim.api.nvim_set_keymap('n', 'Y', 'Y$', { noremap = true, silent = true })

-- add indent
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- add back indent
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
