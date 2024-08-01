-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  -- statusline = {
  -- theme = "arrow", -- default/vscode/vscode_colored/minimal
  -- default/round/block/arrow separators work only for default statusline theme
  -- round and block will work for minimal theme only
  -- separator_style = "arrow",
  -- order = {
  --   "mode",
  --   "file",
  --   "git",
  --   "%=",
  --   "python_venv",
  --   "diagnostics",
  --   "command",
  --   "clients",
  --   "cwd",
  --   "cursor",
  -- },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  nvdash = {
    load_on_startup = true,
  },
  telescope = { style = "bordered" },
}

return M
