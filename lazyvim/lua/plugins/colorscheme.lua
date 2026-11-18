return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- Match VS Code's One Dark Pro (not the Darker or Vivid variants).
      colors = {
        cursorline = "#2c313c",
        -- VS Code's translucent #67769660 selection over #282c34.
        selection = "#404859",
        bg_statusline = "#21252b",
      },
      styles = {
        comments = "italic",
        parameters = "italic",
      },
      highlights = {
        CursorLineNr = { fg = "#abb2bf" },
        BufferLineFill = { bg = "#21252b" },
        BufferLineBackground = { bg = "#21252b" },
        BufferLineBufferSelected = { bg = "#282c34" },
      },
      options = {
        cursorline = true,
        transparency = false,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "onedark",
      },
    },
  },
}
