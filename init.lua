-- ╔════════════════════════════════════════════════════════════╗
-- ║                     Gptnvim Configuration                  ║
-- ║          A Modern, Performance-Focused Neovim Config       ║
-- ╚════════════════════════════════════════════════════════════╝

-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader keys before loading plugins
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Load core configuration
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Load plugins with lazy.nvim
require("lazy").setup("plugins", {
  defaults = {
    lazy = true, -- Lazy load by default for better startup time
    version = false, -- Use latest git commit by default
  },
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
  checker = {
    enabled = true, -- Automatically check for plugin updates
    notify = false, -- Don't notify on updates
  },
  performance = {
    cache = {
      enabled = true,
    },
    rtp = {
      -- Disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = {
    border = "rounded",
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})

-- Load post-plugin configuration
vim.cmd.colorscheme("tokyonight-night")
