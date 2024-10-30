local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local mappings = {
  -- Navigation
  { "<leader>b", "<cmd>NvimTreeToggle<cr>", desc = "Switch window", nowait = true, remap = false },
  { "<leader>e", "<cmd>wincmd w<cr>", desc = "Switch window", nowait = true, remap = false },
  { "<tab>", "<cmd>bnext<cr>", desc = "Next buffer", nowait = true, remap = false },

  -- Telescope for search
  { "<leader>f", group = "File Search", nowait = true, remap = false },
  { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme", nowait = true, remap = false },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files", nowait = true, remap = false },
  { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File", nowait = true, remap = false },
  { "<leader>ft", "<cmd>Telescope live_grep <cr>", desc = "Find Text Pattern In All Files", nowait = true, remap = false },

  -- Lazy Package Manager
  { "<leader>p", "<cmd>Lazy<cr>", desc = "Plugin Manager", nowait = true, remap = false },

  -- Action
  { "<leader>q", "<cmd>wqall!<cr>", desc = "Quit", nowait = true, remap = false },
  { "<leader>s", "<cmd>w!<cr>", desc = "Save", nowait = true, remap = false },
  { "<leader>w", "<cmd>bdelete | bprevious<cr>", desc = "Kill Buffer", nowait = true, remap = false },

  -- Terminal
  { "<leader>t", group = "Terminal", nowait = true, remap = false },
  { "<leader>tt", "<cmd>split | terminal<cr>", desc = "Terminal horizontal", nowait = true, remap = false },
  { "<leader>ty", "<cmd>vsplit | terminal<cr>", desc = "Terminal vertical", nowait = true, remap = false },
}

which_key.add(mappings)
