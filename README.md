# Requirements

## [clangd](https://clangd.llvm.org)
Used as a C/C++ language server.

**macOS**:
```
brew install llvm
```
**Linux**: most distributions include clangd in a clangd package, in a clang-tools package, or in the full llvm distribution.

## [code-minimap](https://github.com/wfxr/code-minimap)
This is a dependency of [minimap.vim](https://github.com/wfxr/minimap.vim)  
   
**macOS**:  
```
brew install code-minimap
```  
**Linux**: 
```
cargo install --locked code-minimap
```

## A patched font from [nerdfonts](https://github.com/ryanoasis/nerd-fonts)
This is required for icons used in [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) and [lualine](https://github.com/nvim-lualine/lualine.nvim).
