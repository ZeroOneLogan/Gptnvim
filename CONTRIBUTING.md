# Contributing to Gptnvim

Thank you for your interest in contributing to Gptnvim! This document provides guidelines and instructions for contributing.

## 🤝 How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with the following information:
- A clear and descriptive title
- Steps to reproduce the bug
- Expected behavior
- Actual behavior
- Your Neovim version (`nvim --version`)
- Your operating system
- Any relevant screenshots or error messages

### Suggesting Enhancements

We welcome feature requests! Please create an issue with:
- A clear description of the enhancement
- Why this enhancement would be useful
- Any implementation ideas you might have

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Make your changes** following our coding standards
3. **Test your changes** thoroughly
4. **Update documentation** if needed
5. **Submit a pull request**

## 📝 Coding Standards

### Lua Style Guide

- Use 2 spaces for indentation
- Keep lines under 120 characters when possible
- Use descriptive variable names
- Add comments for complex logic
- Follow existing code patterns

### Plugin Configuration

When adding a new plugin:

1. Create a new file in `lua/plugins/` or add to an existing file
2. Use the lazy.nvim plugin spec format
3. Add descriptive comments
4. Include keymaps and documentation
5. Test the plugin configuration

Example:

```lua
-- lua/plugins/my-plugin.lua
return {
  {
    "author/plugin-name",
    event = "VeryLazy",
    keys = {
      { "<leader>x", "<cmd>Command<cr>", desc = "Description" },
    },
    opts = {
      -- plugin options
    },
  },
}
```

### Commit Messages

Follow these conventions:

- Use present tense ("Add feature" not "Added feature")
- Use imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters
- Reference issues and pull requests when relevant

Examples:
```
Add telescope extension for projects
Fix LSP keybindings not working
Update README with new features
```

## 🧪 Testing

Before submitting:

1. Start Neovim with your changes
2. Verify no errors appear
3. Test the specific feature you modified
4. Check that existing features still work

## 📚 Documentation

- Update README.md if you add new features
- Add inline comments for complex code
- Update keybinding documentation
- Include usage examples for new plugins

## 🎯 Priority Areas

We're especially interested in contributions in these areas:

- Performance improvements
- Better default configurations
- Additional language support
- UI/UX enhancements
- Documentation improvements
- Bug fixes

## ❓ Questions?

Feel free to open an issue with the "question" label if you need help or clarification.

Thank you for contributing to Gptnvim! 🎉
