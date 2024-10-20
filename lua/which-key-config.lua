local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end


local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  -- Navigation
  { "<leader>e", "<wincmd>w<cr>", desc = "Switch window", nowait = true, remap = false },

  -- Telescope for search
  { "<leader>f", group = "File Search", nowait = true, remap = false },
  { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme", nowait = true, remap = false },
  { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find files", nowait = true, remap = false },
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File", nowait = true, remap = false },
  { "<leader>ft", "<cmd>Telescope live_grep <cr>", desc = "Find Text Pattern In All Files", nowait = true, remap = false },
  
  -- Lazy Package Manager
  { "<leader>p", "<cmd>Lazy<cr>", desc = "Plugin Manager", nowait = true, remap = false },
  
  -- Action
  { "<leader>q", "<cmd>wqall!<CR>", desc = "Quit", nowait = true, remap = false },
  { "<leader>s", "<cmd>w!<CR>", desc = "Save", nowait = true, remap = false },
  { "<leader>w", "<cmd>bdelete | bprevious<cr>", desc = "Kill Buffer", nowait = true, remap = false },
}

which_key.add(mappings)
