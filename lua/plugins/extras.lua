-- ╔════════════════════════════════════════════════════════════╗
-- ║                     Extra Plugins                          ║
-- ╚════════════════════════════════════════════════════════════╝

return {
  -- Improve startup time
  {
    "lewis6991/impatient.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Library used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

  -- Better UI components
  { "MunifTanjim/nui.nvim", lazy = true },

  -- Icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Faster filetype detection
  {
    "nathom/filetype.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = {
        extensions = {
          tf = "terraform",
          tfvars = "terraform",
          tfstate = "json",
        },
        literal = {
          [".env"] = "sh",
        },
        complex = {
          ["*.jenkinsfile"] = "groovy",
        },
      },
    },
  },

  -- Measure startup time
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = function()
      vim.g.startuptime_tries = 10
    end,
  },

  -- Better increment/decrement
  {
    "monaqa/dial.nvim",
    keys = {
      { "<C-a>", function() require("dial.map").manipulate("increment", "normal") end, mode = "n" },
      { "<C-x>", function() require("dial.map").manipulate("decrement", "normal") end, mode = "n" },
      { "g<C-a>", function() require("dial.map").manipulate("increment", "gnormal") end, mode = "n" },
      { "g<C-x>", function() require("dial.map").manipulate("decrement", "gnormal") end, mode = "n" },
      { "<C-a>", function() require("dial.map").manipulate("increment", "visual") end, mode = "v" },
      { "<C-x>", function() require("dial.map").manipulate("decrement", "visual") end, mode = "v" },
      { "g<C-a>", function() require("dial.map").manipulate("increment", "gvisual") end, mode = "v" },
      { "g<C-x>", function() require("dial.map").manipulate("decrement", "gvisual") end, mode = "v" },
    },
  },

  -- Enhanced f/F/t/T motions
  {
    "ggandor/leap.nvim",
    keys = {
      { "s", mode = { "n", "x", "o" }, desc = "Leap forward to" },
      { "S", mode = { "n", "x", "o" }, desc = "Leap backward to" },
      { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
    },
    config = function(_, opts)
      local leap = require("leap")
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end
      leap.add_default_mappings(true)
      vim.keymap.del({ "x", "o" }, "x")
      vim.keymap.del({ "x", "o" }, "X")
    end,
  },

  -- Better escape
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    opts = {
      mapping = { "jk", "jj" },
      timeout = 200,
      clear_empty_lines = false,
      keys = "<Esc>",
    },
  },

  -- Repeat plugin commands
  {
    "tpope/vim-repeat",
    event = "VeryLazy",
  },

  -- Sleuth: Auto-detect indent settings
  {
    "tpope/vim-sleuth",
    event = { "BufReadPost", "BufNewFile" },
  },

  -- Better % matching
  {
    "andymass/vim-matchup",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },

  -- Project management
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
      detection_methods = { "pattern", "lsp" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      ignore_lsp = {},
      exclude_dirs = {},
      show_hidden = false,
      silent_chdir = true,
      scope_chdir = "global",
    },
    config = function(_, opts)
      require("project_nvim").setup(opts)
      require("telescope").load_extension("projects")
    end,
  },

  -- Focus on current window
  {
    "nvim-focus/focus.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      enable = true,
      commands = true,
      autoresize = {
        enable = true,
        width = 0,
        height = 0,
        minwidth = 0,
        minheight = 0,
        height_quickfix = 10,
      },
      split = {
        bufnew = false,
        tmux = false,
      },
      ui = {
        number = false,
        relativenumber = false,
        hybridnumber = false,
        absolutenumber_unfocussed = false,
        cursorline = true,
        cursorcolumn = false,
        colorcolumn = {
          enable = false,
          list = "+1",
        },
        signcolumn = true,
        winhighlight = false,
      },
    },
    keys = {
      { "<leader>uf", "<cmd>FocusToggle<cr>", desc = "Toggle Focus" },
    },
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
    opts = {
      window = {
        backdrop = 0.95,
        width = 120,
        height = 1,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
        },
        twilight = { enabled = false },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
        kitty = {
          enabled = false,
          font = "+4",
        },
      },
    },
  },

  -- Dimming inactive windows
  {
    "folke/twilight.nvim",
    cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
    opts = {
      dimming = {
        alpha = 0.25,
        color = { "Normal", "#ffffff" },
        term_bg = "#000000",
        inactive = false,
      },
      context = 10,
      treesitter = true,
      expand = {
        "function",
        "method",
        "table",
        "if_statement",
      },
      exclude = {},
    },
  },
}
