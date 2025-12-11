-- ╔════════════════════════════════════════════════════════════╗
-- ║                     Color Scheme                           ║
-- ╚════════════════════════════════════════════════════════════╝

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      sidebars = { "qf", "help", "terminal", "packer" },
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = true,
      on_colors = function(colors)
        colors.border = colors.blue
      end,
      on_highlights = function(hl, c)
        -- Make diagnostics more visible
        hl.DiagnosticError = { fg = c.error, bold = true }
        hl.DiagnosticWarn = { fg = c.warning, bold = true }
        hl.DiagnosticInfo = { fg = c.info, bold = true }
        hl.DiagnosticHint = { fg = c.hint, bold = true }
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha",
      transparent_background = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = true,
        telescope = true,
        which_key = true,
      },
    },
  },
}
