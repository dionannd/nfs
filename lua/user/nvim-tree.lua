vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌"
  },
  folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}
vim.g.nvim_tree_respect_buf_cwd = 1

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {"startify", "dashboard", "alpha"},
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  update_to_buf_dir = {enable = true, auto_open = true},
  diagnostics = {
    enable = true,
    icons = {hint = "", info = "", warning = "", error = ""}
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  system_open = {cmd = nil, args = {}},
  filters = {dotfiles = false, custom = {}},
  git = {enable = true, ignore = true, timeout = 500},
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    auto_resize = true,
    number = false,
    relativenumber = false
  },
  trash = {cmd = "trash", require_confirm = true},
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  root_folder_modifier = ":t",
  show_icons = {git = 1, folders = 1, files = 1, folder_arrows = 1, tree_width = 30}
}