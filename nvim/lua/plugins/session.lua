return {
  "rmagatti/auto-session",
  lazy = false,
  config = function()
    require("auto-session").setup {
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      log_level = "error",
      -- auto_session_enable_last_session = true,
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,

      session_lens = {
        buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
      vim.keymap.set("n", "<CS-s>", require("auto-session.session-lens").search_session, { noremap = true }),
      -- vim.keymap.set("n", "<CS-d>", require("auto-session.session-lens").delete_session, {noremap = true,})
      -- vim.keymap.set("n", "<CS-s>s", )
    }
  end,
}
