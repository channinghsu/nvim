<h1 align="center">
    nvimdots
</h1>

<div align="center">
    <img
        alt="Stars"
        src="https://img.shields.io/github/stars/ayamir/nvimdots?colorA=363A4F&colorB=B7BDF8&logo=adafruit&logoColor=D9E0EE">
    </a>
    <a href="https://github.com/ayamir/nvimdots/issues">
    <img
        alt="Issues"
        src="https://img.shields.io/github/issues-raw/ayamir/nvimdots?colorA=363A4f&colorB=F5A97F&logo=github&logoColor=D9E0EE">
    </a>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
    <img
        alt="Neovim Version Capability"
        src="https://img.shields.io/badge/Supports%20Nvim-v0.11-A6D895?colorA=363A4F&logo=neovim&logoColor=D9E0EE">
    </a>
    <a href="https://github.com/ayamir/nvimdots/releases">
    <img
        alt="Release"
        src="https://img.shields.io/github/v/release/ayamir/nvimdots.svg?logo=github&color=F2CDCD&logoColor=D9E0EE&labelColor=363A4F">
    </a>
    <a href="https://github.com/ayamir/nvimdots/stargazers">
    <br>
    <a href="https://github.com/ayamir/nvimdots/contributors">
    <img
        alt="Contributors"
        src="https://img.shields.io/github/contributors/ayamir/nvimdots?colorA=363A4F&colorB=B5E8E0&logo=git&logoColor=D9E0EE">
    </a>
    <img
        alt="Code Size"
        src="https://img.shields.io/github/languages/code-size/ayamir/nvimdots?colorA=363A4F&colorB=DDB6F2&logo=gitlfs&logoColor=D9E0EE">
    <a href="https://discord.gg/rE46YdFAUc">
    <img
        alt="Discord"
        src="https://img.shields.io/badge/Discord-nvimdots-b4befe?colorA=363A4F&logo=discord&logoColor=D9E0EE"/>
    </a>
    <a href="https://deepwiki.com/ayamir/nvimdots"><img src="https://deepwiki.com/badge.svg" alt="Ask DeepWiki"></a>
</div>


## Install Instructions

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:channinghsu/nvim ~/.config/channinghsu/nvim
NVIM_APPNAME=channinghsu/nvim/ nvim --headless +"Lazy! sync" +qa
```

Open Neovim with this config:

```sh
NVIM_APPNAME=channinghsu/nvim/ nvim
```

## Plugins

### ai

+ [CopilotC-Nvim/CopilotChat.nvim](https://dotfyle.com/plugins/CopilotC-Nvim/CopilotChat.nvim)
### bars-and-lines

+ [Bekaboo/dropbar.nvim](https://dotfyle.com/plugins/Bekaboo/dropbar.nvim)
### code-runner

+ [michaelb/sniprun](https://dotfyle.com/plugins/michaelb/sniprun)
### color

+ [brenoprata10/nvim-highlight-colors](https://dotfyle.com/plugins/brenoprata10/nvim-highlight-colors)
+ [folke/twilight.nvim](https://dotfyle.com/plugins/folke/twilight.nvim)
### colorscheme

+ [rebelot/kanagawa.nvim](https://dotfyle.com/plugins/rebelot/kanagawa.nvim)
+ [rose-pine/neovim](https://dotfyle.com/plugins/rose-pine/neovim)
+ [folke/tokyonight.nvim](https://dotfyle.com/plugins/folke/tokyonight.nvim)
+ [EdenEast/nightfox.nvim](https://dotfyle.com/plugins/EdenEast/nightfox.nvim)
### command-line

+ [gelguy/wilder.nvim](https://dotfyle.com/plugins/gelguy/wilder.nvim)
### comment

+ [JoosepAlviste/nvim-ts-context-commentstring](https://dotfyle.com/plugins/JoosepAlviste/nvim-ts-context-commentstring)
+ [folke/todo-comments.nvim](https://dotfyle.com/plugins/folke/todo-comments.nvim)
+ [numToStr/Comment.nvim](https://dotfyle.com/plugins/numToStr/Comment.nvim)
### completion

+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)
+ [zbirenbaum/copilot.lua](https://dotfyle.com/plugins/zbirenbaum/copilot.lua)
+ [lukas-reineke/cmp-under-comparator](https://dotfyle.com/plugins/lukas-reineke/cmp-under-comparator)
### cursorline

+ [echasnovski/mini.cursorword](https://dotfyle.com/plugins/echasnovski/mini.cursorword)
### debugging

+ [mfussenegger/nvim-dap](https://dotfyle.com/plugins/mfussenegger/nvim-dap)
+ [rcarriga/nvim-dap-ui](https://dotfyle.com/plugins/rcarriga/nvim-dap-ui)
### dependency-management

+ [Saecki/crates.nvim](https://dotfyle.com/plugins/Saecki/crates.nvim)
### diagnostics

+ [folke/trouble.nvim](https://dotfyle.com/plugins/folke/trouble.nvim)
### editing-support

+ [debugloop/telescope-undo.nvim](https://dotfyle.com/plugins/debugloop/telescope-undo.nvim)
+ [monaqa/dial.nvim](https://dotfyle.com/plugins/monaqa/dial.nvim)
+ [folke/zen-mode.nvim](https://dotfyle.com/plugins/folke/zen-mode.nvim)
+ [nvim-treesitter/nvim-treesitter-context](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-context)
+ [windwp/nvim-ts-autotag](https://dotfyle.com/plugins/windwp/nvim-ts-autotag)
+ [m4xshen/autoclose.nvim](https://dotfyle.com/plugins/m4xshen/autoclose.nvim)
### file-explorer

+ [nvim-tree/nvim-tree.lua](https://dotfyle.com/plugins/nvim-tree/nvim-tree.lua)
### formatting

+ [echasnovski/mini.align](https://dotfyle.com/plugins/echasnovski/mini.align)
### fuzzy-finder

+ [jvgrootveld/telescope-zoxide](https://dotfyle.com/plugins/jvgrootveld/telescope-zoxide)
+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)
### git

+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)
+ [aaronhallaert/advanced-git-search.nvim](https://dotfyle.com/plugins/aaronhallaert/advanced-git-search.nvim)
+ [sindrets/diffview.nvim](https://dotfyle.com/plugins/sindrets/diffview.nvim)
### icon

+ [nvim-tree/nvim-web-devicons](https://dotfyle.com/plugins/nvim-tree/nvim-web-devicons)
### indent

+ [lukas-reineke/indent-blankline.nvim](https://dotfyle.com/plugins/lukas-reineke/indent-blankline.nvim)
### keybinding

+ [max397574/better-escape.nvim](https://dotfyle.com/plugins/max397574/better-escape.nvim)
+ [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)
### lsp

+ [nvimdev/lspsaga.nvim](https://dotfyle.com/plugins/nvimdev/lspsaga.nvim)
+ [DNLHC/glance.nvim](https://dotfyle.com/plugins/DNLHC/glance.nvim)
+ [j-hui/fidget.nvim](https://dotfyle.com/plugins/j-hui/fidget.nvim)
+ [nvimtools/none-ls.nvim](https://dotfyle.com/plugins/nvimtools/none-ls.nvim)
+ [mrcjkb/rustaceanvim](https://dotfyle.com/plugins/mrcjkb/rustaceanvim)
+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
### lsp-installer

+ [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)
### markdown-and-latex

+ [iamcco/markdown-preview.nvim](https://dotfyle.com/plugins/iamcco/markdown-preview.nvim)
+ [MeanderingProgrammer/render-markdown.nvim](https://dotfyle.com/plugins/MeanderingProgrammer/render-markdown.nvim)
### motion

+ [folke/flash.nvim](https://dotfyle.com/plugins/folke/flash.nvim)
+ [smoka7/hop.nvim](https://dotfyle.com/plugins/smoka7/hop.nvim)
### nvim-dev

+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)
+ [MunifTanjim/nui.nvim](https://dotfyle.com/plugins/MunifTanjim/nui.nvim)
### plugin-manager

+ [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)
### project

+ [ahmedkhalf/project.nvim](https://dotfyle.com/plugins/ahmedkhalf/project.nvim)
### quickfix

+ [kevinhwang91/nvim-bqf](https://dotfyle.com/plugins/kevinhwang91/nvim-bqf)
### scrollbar

+ [dstein64/nvim-scrollview](https://dotfyle.com/plugins/dstein64/nvim-scrollview)
### scrolling

+ [karb94/neoscroll.nvim](https://dotfyle.com/plugins/karb94/neoscroll.nvim)
### search

+ [nvim-telescope/telescope-frecency.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope-frecency.nvim)
+ [FabianWirth/search.nvim](https://dotfyle.com/plugins/FabianWirth/search.nvim)
+ [MagicDuck/grug-far.nvim](https://dotfyle.com/plugins/MagicDuck/grug-far.nvim)
### session

+ [olimorris/persisted.nvim](https://dotfyle.com/plugins/olimorris/persisted.nvim)
### snippet

+ [rafamadriz/friendly-snippets](https://dotfyle.com/plugins/rafamadriz/friendly-snippets)
+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
### split-and-window

+ [mrjones2014/smart-splits.nvim](https://dotfyle.com/plugins/mrjones2014/smart-splits.nvim)
+ [folke/edgy.nvim](https://dotfyle.com/plugins/folke/edgy.nvim)
### startup

+ [goolord/alpha-nvim](https://dotfyle.com/plugins/goolord/alpha-nvim)
### statusline

+ [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)
### syntax

+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
+ [nvim-treesitter/nvim-treesitter-textobjects](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-textobjects)
### tabline

+ [akinsho/bufferline.nvim](https://dotfyle.com/plugins/akinsho/bufferline.nvim)
### terminal-integration

+ [akinsho/toggleterm.nvim](https://dotfyle.com/plugins/akinsho/toggleterm.nvim)
### tree-sitter-based

+ [mfussenegger/nvim-treehopper](https://dotfyle.com/plugins/mfussenegger/nvim-treehopper)
### utility

+ [rcarriga/nvim-notify](https://dotfyle.com/plugins/rcarriga/nvim-notify)
## Language Servers

+ bashls
+ clangd
+ gopls
+ html
+ jsonls
+ lua_ls
+ pylsp
+ rust_analyzer


 This readme was generated by [Dotfyle](https://dotfyle.com)
