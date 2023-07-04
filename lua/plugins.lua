


return {
  -- VSCode Light Theme
  {
    'Mofiqul/vscode.nvim'
  },
  -- Which-key for key documentation
  {
    "folke/which-key.nvim",
    lazy = true
  },
  -- Bufferline for tab
  {
      'akinsho/bufferline.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  -- Statusline for Bottom status bar
  {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  -- Add syntax highlighting
  {
      'nvim-treesitter/nvim-treesitter',
  },
  -- Nvim Tree for File Explorer
  {
      'nvim-tree/nvim-tree.lua',
      lazy = true,
      dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
      'nvim-telescope/telescope.nvim',
      lazy = true,
      dependencies = {'nvim-lua/plenary.nvim'},
  },
  {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }
}
