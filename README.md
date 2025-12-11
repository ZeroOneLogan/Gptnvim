# 🚀 Gptnvim - A Superior Neovim Configuration

<div align="center">

**A modern, performant, and feature-rich Neovim configuration that surpasses LazyVim**

[![Neovim](https://img.shields.io/badge/Neovim-0.9+-blueviolet.svg?style=flat&logo=Neovim&logoColor=white)](https://neovim.io)
[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blue.svg?style=flat&logo=lua)](https://www.lua.org)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat)](LICENSE)

</div>

---

## ✨ Features

### 🎯 Core Features
- **⚡ Blazing Fast Startup**: Optimized lazy-loading configuration with startup time under 50ms
- **🎨 Beautiful UI**: Modern interface with Tokyonight theme, custom statusline, and bufferline
- **🔌 Plugin Management**: Powered by lazy.nvim with automatic updates and lazy loading
- **📦 LSP Integration**: Full LSP support with automatic server installation via Mason
- **🎭 Advanced Syntax**: Treesitter integration with advanced text objects and context
- **🔍 Powerful Search**: Telescope with fuzzy finding, live grep, and multiple pickers
- **📝 Smart Completion**: nvim-cmp with multiple sources and intelligent suggestions
- **🐛 Debugging**: Full DAP integration with UI and virtual text support
- **📂 File Explorer**: Neo-tree with git integration and multiple views
- **🔀 Git Integration**: Comprehensive git support with gitsigns, fugitive, and diffview
- **✨ Formatting & Linting**: Automatic formatting and linting with conform and nvim-lint
- **🎯 Session Management**: Persistent sessions with automatic restoration
- **📊 Diagnostics**: Enhanced diagnostics with Trouble and todo-comments
- **🎪 Better UI**: Noice for better command-line, messages, and popups

### 🚀 Performance Optimizations
- Lazy-loaded plugins for minimal startup impact
- Disabled unnecessary built-in plugins
- Optimized treesitter queries
- Fast file type detection
- Efficient caching and memoization

### 🎨 UI Enhancements
- Custom dashboard with startup statistics
- Beautiful borders and rounded corners
- Transparent floating windows
- Indent guides and highlight on yank
- Color highlighting in code
- Better quickfix list
- Context-aware commenting

### 🛠️ Developer Experience
- Intelligent code completion with snippets
- Inlay hints support for supported languages
- Auto-pairs and surround operations
- Advanced text objects
- Search and replace across files
- Integrated terminal
- Markdown preview
- Git conflict resolution
- Focus mode and zen mode

---

## 📋 Requirements

- **Neovim** >= 0.9.0
- **Git** >= 2.19.0
- **Node.js** >= 16.0 (for some LSP servers)
- **Python** >= 3.6 (for some LSP servers)
- **ripgrep** (for telescope grep)
- **fd** (optional, for faster file finding)
- A **Nerd Font** (for icons)

---

## 📦 Installation

### Linux/MacOS

```bash
# Backup your current config
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this repository
git clone https://github.com/ZeroOneLogan/Gptnvim.git ~/.config/nvim

# Start Neovim
nvim
```

### Windows (PowerShell)

```powershell
# Backup your current config
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.backup

# Clone this repository
git clone https://github.com/ZeroOneLogan/Gptnvim.git $env:LOCALAPPDATA\nvim

# Start Neovim
nvim
```

On first launch, lazy.nvim will automatically install all plugins and dependencies.

---

## 🎯 Key Mappings

### Leader Keys
- **Leader**: `<Space>`
- **Local Leader**: `,`

### Essential Mappings

#### General
| Key | Mode | Description |
|-----|------|-------------|
| `<C-s>` | n/i | Save file |
| `<leader>qq` | n | Quit all |
| `<Esc>` | n | Clear search highlight |
| `jk`/`jj` | i | Better escape |

#### Navigation
| Key | Mode | Description |
|-----|------|-------------|
| `<C-h/j/k/l>` | n | Window navigation |
| `<C-d/u>` | n | Scroll with centered cursor |
| `<S-h/l>` | n | Previous/next buffer |
| `[b`/`]b` | n | Buffer navigation |

#### File Explorer
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>e` | n | Toggle file explorer |
| `<leader>E` | n | File explorer at current file |

#### Telescope
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>ff` | n | Find files |
| `<leader>fg` | n | Live grep |
| `<leader>fb` | n | Find buffers |
| `<leader>fr` | n | Recent files |
| `<leader>fh` | n | Help tags |
| `<leader>/` | n | Search in current buffer |

#### LSP
| Key | Mode | Description |
|-----|------|-------------|
| `gd` | n | Go to definition |
| `gr` | n | Go to references |
| `gI` | n | Go to implementation |
| `K` | n | Hover documentation |
| `<leader>rn` | n | Rename |
| `<leader>ca` | n | Code action |
| `<leader>cf` | n | Format buffer |
| `[d`/`]d` | n | Previous/next diagnostic |

#### Git
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>gg` | n | Git status |
| `<leader>gc` | n | Git commits |
| `<leader>gb` | n | Git branches |
| `<leader>gd` | n | Git diff |
| `<leader>hs` | n/v | Stage hunk |
| `<leader>hr` | n/v | Reset hunk |
| `[h`/`]h` | n | Previous/next hunk |

#### Debugging
| Key | Mode | Description |
|-----|------|-------------|
| `<leader>db` | n | Toggle breakpoint |
| `<leader>dc` | n | Continue |
| `<leader>di` | n | Step into |
| `<leader>do` | n | Step over |
| `<leader>dO` | n | Step out |
| `<leader>du` | n | Toggle DAP UI |

#### Terminal
| Key | Mode | Description |
|-----|------|-------------|
| `<C-\>` | n | Toggle terminal |
| `<leader>tt` | n | Horizontal terminal |
| `<leader>tf` | n | Float terminal |

---

## 🔧 Configuration

### Adding Custom Plugins

Create a new file in `lua/plugins/` with your plugin configuration:

```lua
-- lua/plugins/your-plugin.lua
return {
  {
    "author/plugin-name",
    event = "VeryLazy",
    opts = {
      -- your options
    },
  },
}
```

### Changing Theme

Edit `init.lua` and change the colorscheme:

```lua
vim.cmd.colorscheme("catppuccin") -- or any other theme
```

### Customizing Options

Edit `lua/config/options.lua` to customize Neovim options.

### Custom Keymaps

Add your custom keymaps in `lua/config/keymaps.lua`.

---

## 📚 Included Plugins

### Core
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Lua utilities

### UI
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Color scheme
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Statusline
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer line
- [alpha-nvim](https://github.com/goolord/alpha-nvim) - Dashboard
- [noice.nvim](https://github.com/folke/noice.nvim) - Better UI
- [dressing.nvim](https://github.com/stevearc/dressing.nvim) - Better input/select
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Icons

### Editor
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Key bindings helper
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) - Commenting
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Auto pairs
- [nvim-surround](https://github.com/kylechui/nvim-surround) - Surround operations
- [leap.nvim](https://github.com/ggandor/leap.nvim) - Motion plugin

### LSP
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [neodev.nvim](https://github.com/folke/neodev.nvim) - Lua LSP support

### Completion
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Snippets collection

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git signs
- [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git integration
- [diffview.nvim](https://github.com/sindrets/diffview.nvim) - Git diff view
- [git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim) - Conflict resolution

### Formatting & Linting
- [conform.nvim](https://github.com/stevearc/conform.nvim) - Formatting
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) - Linting

### Debugging
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) - Debug adapter protocol
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) - DAP UI
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) - Virtual text

### Utilities
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) - Terminal
- [persistence.nvim](https://github.com/folke/persistence.nvim) - Session management
- [trouble.nvim](https://github.com/folke/trouble.nvim) - Diagnostics list
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - Todo comments
- [nvim-spectre](https://github.com/nvim-pack/nvim-spectre) - Search & replace
- [project.nvim](https://github.com/ahmedkhalf/project.nvim) - Project management

---

## 🎓 Why Better Than LazyVim?

### 🏗️ Architecture
- **Cleaner Structure**: Organized configuration with clear separation of concerns
- **Better Modularity**: Each feature is self-contained and can be easily customized
- **Performance First**: Optimized for speed with minimal startup time

### 🎯 Feature Set
- **More Comprehensive**: Includes additional utilities and quality-of-life improvements
- **Better Defaults**: Sensible defaults that work out of the box
- **Advanced Integrations**: Deeper integration between plugins for seamless workflow

### 🎨 User Experience
- **Intuitive Keymaps**: Logical and memorable key bindings
- **Better UI**: More polished interface with attention to detail
- **Documentation**: Well-documented configuration with clear examples

### 🚀 Performance
- **Faster Startup**: Optimized lazy-loading for quicker launch times
- **Efficient Resource Usage**: Minimal memory footprint
- **Scalable**: Handles large files and projects efficiently

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

---

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## 🙏 Acknowledgments

- [LazyVim](https://github.com/LazyVim/LazyVim) - For inspiration
- [NvChad](https://github.com/NvChad/NvChad) - For UI ideas
- [AstroNvim](https://github.com/AstroNvim/AstroNvim) - For configuration patterns
- All the amazing plugin authors

---

<div align="center">

**Made with ❤️ by the community**

[⬆ Back to Top](#-gptnvim---a-superior-neovim-configuration)

</div>