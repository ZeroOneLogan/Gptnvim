# 🚀 Quick Start Guide

Get up and running with Gptnvim in minutes!

## Installation

### Step 1: Install Prerequisites

**Required:**
- Neovim >= 0.9.0
- Git >= 2.19.0
- A Nerd Font ([Download here](https://www.nerdfonts.com/))

**Optional but Recommended:**
```bash
# Install ripgrep (for Telescope)
# Ubuntu/Debian
sudo apt install ripgrep

# macOS
brew install ripgrep

# Install fd (for faster file finding)
# Ubuntu/Debian
sudo apt install fd-find

# macOS
brew install fd

# Install Node.js (for LSP servers)
# Ubuntu/Debian
sudo apt install nodejs npm

# macOS
brew install node
```

### Step 2: Install Gptnvim

**Linux/macOS:**
```bash
# Backup existing config
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup

# Clone Gptnvim
git clone https://github.com/ZeroOneLogan/Gptnvim.git ~/.config/nvim

# Start Neovim
nvim
```

**Windows:**
```powershell
# Backup existing config
if (Test-Path $env:LOCALAPPDATA\nvim) {
    Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.backup
}

# Clone Gptnvim
git clone https://github.com/ZeroOneLogan/Gptnvim.git $env:LOCALAPPDATA\nvim

# Start Neovim
nvim
```

### Step 3: First Launch

On first launch:
1. Lazy.nvim will automatically install all plugins
2. Wait for the installation to complete
3. Restart Neovim
4. Run `:checkhealth` to verify everything is working

## Basic Usage

### Essential Keybindings

**Leader key is `<Space>`**

#### File Operations
- `<Space>ff` - Find files
- `<Space>fg` - Search in files (grep)
- `<Space>fr` - Recent files
- `<Space>e` - Toggle file explorer
- `<C-s>` - Save file

#### Buffer Management
- `<S-h>` / `<S-l>` - Previous/Next buffer
- `<Space>bd` - Delete current buffer
- `<Space>fb` - Find in open buffers

#### Window Navigation
- `<C-h/j/k/l>` - Move between windows
- `<Space>sv` - Split vertically
- `<Space>sh` - Split horizontally

#### Code Navigation
- `gd` - Go to definition
- `gr` - Go to references
- `K` - Show hover documentation
- `<Space>ca` - Code actions
- `<Space>rn` - Rename symbol

#### Git
- `<Space>gg` - Git status
- `<Space>gd` - Git diff
- `]h` / `[h` - Next/Previous git hunk
- `<Space>hs` - Stage hunk

#### Search & Replace
- `<Space>/` - Search in current buffer
- `<Space>sr` - Search and replace in files
- `<Esc>` - Clear search highlight

#### Terminal
- `<C-\>` - Toggle terminal
- `<Esc>` - Exit terminal mode

### Installing Language Servers

Gptnvim uses Mason to manage LSP servers:

1. Open Neovim
2. Run `:Mason`
3. Navigate with `j/k`
4. Press `i` to install a server
5. Press `X` to uninstall a server

Common servers are auto-installed on first use.

### Customizing

#### Change Theme
Edit `init.lua` and change the colorscheme line:
```lua
vim.cmd.colorscheme("tokyonight-night") -- Change to your preference
```

Available themes:
- `tokyonight-night`
- `tokyonight-storm`
- `tokyonight-day`
- `catppuccin` (catppuccin-mocha)

#### Add Custom Keybindings
Edit `lua/config/keymaps.lua`:
```lua
vim.keymap.set("n", "<leader>xx", "<cmd>YourCommand<cr>", { desc = "Description" })
```

#### Change Options
Edit `lua/config/options.lua`:
```lua
vim.opt.relativenumber = false -- Example: disable relative numbers
```

## Next Steps

1. **Learn Keybindings**: Press `<Space>` and wait for which-key popup
2. **Explore Plugins**: Check out `lua/plugins/` directory
3. **Read Documentation**: See full README.md
4. **Customize**: Make it yours!

## Troubleshooting

### Plugins not loading
```
:Lazy sync
```

### LSP not working
```
:LspInfo
:Mason
```

### Treesitter issues
```
:TSUpdate
```

### Clear cache
```
:Lazy clean
```

### Full health check
```
:checkhealth
```

## Getting Help

- Check `:help` for Neovim documentation
- Press `<Space>` to see available keybindings
- Open an issue on GitHub
- Check CONTRIBUTING.md for more details

## Tips & Tricks

1. **Use `:Telescope keymaps`** to search all available keybindings
2. **Use `:Telescope help_tags`** to search Neovim help
3. **Press `?` in Telescope** to see picker-specific keybindings
4. **Use `:WhichKey`** to explore key mappings
5. **Run `:StartupTime`** to measure startup performance

Happy Vimming! 🎉
