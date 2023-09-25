return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity/bars-and-lines/lualine-nvim" },
  { import = "astrocommunity/bars-and-lines/heirline-vscode-winbar" },
  { import = "astrocommunity/pack/typescript" },
  { import = "astrocommunity/pack/json" },
  { import = "astrocommunity/pack/bash" },
  { import = "astrocommunity/pack/html-css" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
