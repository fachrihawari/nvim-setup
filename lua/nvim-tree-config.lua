local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

require('nvim-tree').setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    side = "right",
    width = 45,
  },
  filters = {
    custom = {
      "^.git$",
    },
  },
  renderer = {
    root_folder_modifier = ":t",
    -- These icons are visible when you install web-devicons
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "●",
          staged = "s",
          unmerged = "",
          renamed = "➜",
          untracked = "u",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "󰌵",
      info = "",
      warning = "",
      error = "",
    },
  },
}
