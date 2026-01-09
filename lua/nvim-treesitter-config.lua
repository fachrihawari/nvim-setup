local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not status_ok then
  return
end

treesitter.setup({
  ensure_installed = { "typescript", "css", "javascript", "svelte" },
  highlight = { enable = true },
})
