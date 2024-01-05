-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- navigating completions in the autocomplete popup
local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings =
    lsp.defaults.cmp_mappings(
    {
        -- prev item in menu
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),

        -- next item in menu
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),

        -- confirm current selection
        ["<C-y>"] = cmp.mapping.confirm({select = true}),

        -- misc
        ["<C-Space>"] = cmp.mapping.complete()
    }
)

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
