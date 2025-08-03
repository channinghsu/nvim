<h1 align="center">
    nvimdots
    <br>
    <a href="https://github.com/neovim/neovim/releases/tag/stable">
    <img
        alt="Neovim Version Capability"
        src="https://img.shields.io/badge/Supports%20Nvim-v0.11-A6D895?style=for-the-badge&colorA=363A4F&logo=neovim&logoColor=D9E0EE">
    </a>
    <a href="https://github.com/ayamir/nvimdots/releases">
    <img
        alt="Release"
        src="https://img.shields.io/github/v/release/ayamir/nvimdots.svg?style=for-the-badge&logo=github&color=F2CDCD&logoColor=D9E0EE&labelColor=363A4F">
    </a>
    <a href="https://discord.gg/rE46YdFAUc">
      <img
        alt="Discord"
        src="https://img.shields.io/badge/Discord-nvimdots-B4BEFE?style=for-the-badge&colorA=363A4F&logo=discord&logoColor=D9E0EE">
    </a>
    <a href="https://deepwiki.com/ayamir/nvimdots">
      <img
        alt="Ask DeepWiki"
        src="https://img.shields.io/badge/Ask-DeepWiki-D9E0EE?style=for-the-badge&colorA=363A4F&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzOCI+PHBhdGggc3R5bGU9ImZpbGw6I2Q5ZTBlZTtzdHJva2U6I2Q5ZTBlZSIgZD0iTTIxLjg4OSAxNi45OThhMi4zMyAyLjMzIDAgMCAxIDIuMzE0IDBsMS44NDggMS4wNjdhMSAxIDAgMCAwIC4yMjkuMDg3cS4wOTcuMDIyLjE5My4wMjZoLjAxcS4wMSAwIC4wMjEtLjAwM2EuOC44IDAgMCAwIC4zODgtLjEwNWwuMDE4LS4wMDggMy42OTQtMi4xMzRhLjg1Ljg1IDAgMCAwIC40MjctLjc0di00LjI2N2EuODUuODUgMCAwIDAtLjQyNy0uNzRMMjYuOTEgOC4wNDdhLjg2Ljg2IDAgMCAwLS44NTYgMGwtMy42OTQgMi4xMzRzLS4wMS4wMDgtLjAxNS4wMWEuOC44IDAgMCAwLS4xNTcuMTIxbC0uMDIxLjAyM2ExIDEgMCAwIDAtLjExLjE0NHEtLjAwOC4wMS0uMDE1LjAyNmEuOS45IDAgMCAwLS4xMTEuNDIydjIuMTM0YTIuMzE0IDIuMzE0IDAgMCAxLTMuNDcxIDIuMDAybC0xLjg0OC0xLjA2N2ExIDEgMCAwIDAtLjIyOS0uMDg3IDEgMSAwIDAgMC0uMTkzLS4wMjZoLS4wMjhhLjguOCAwIDAgMC0uMzkxLjEwM2wtLjAxOC4wMDgtMy42OTQgMi4xMzRhLjg1Ljg1IDAgMCAwLS40MjcuNzR2NC4yNjdhLjg1Ljg1IDAgMCAwIC40MjcuNzRsMy42OTQgMi4xMzQuMDE4LjAwOGExIDEgMCAwIDAgLjE4My4wNzVsLjAzMS4wMDhhMSAxIDAgMCAwIC4xNzcuMDIzbC4wMjEuMDAzaC4wMWEuOC44IDAgMCAwIC4xOTMtLjAyNnEuMDE5LS4wMDYuMDQxLS4wMWExIDEgMCAwIDAgLjE4OC0uMDc3bDEuODQ4LTEuMDY3YTIuMzIgMi4zMiAwIDAgMSAyLjMxMyAwIDIuMzIgMi4zMiAwIDAgMSAxLjE1NyAyLjAwM3YyLjEzNHEuMDAxLjEwNC4wMjYuMi4wMDMuMDIuMDEuMDQxYTEgMSAwIDAgMCAuMDc0LjE4bC4wMTYuMDI2cS4wNDYuMDc3LjExMS4xNDRsLjAyMS4wMjNxLjA3LjA2OC4xNTcuMTIxbC4wMTUuMDEgMy42OTQgMi4xMzRhLjg1Ljg1IDAgMCAwIC44NTQgMGwzLjY5NC0yLjEzNGEuODUuODUgMCAwIDAgLjQyNy0uNzR2LTQuMjY3YS44NS44NSAwIDAgMC0uNDI3LS43NGwtMy42OTQtMi4xMzQtLjAxOC0uMDA4YTEgMSAwIDAgMC0uMTgyLS4wNzVsLS4wMjgtLjAwNWEuNy43IDAgMCAwLS4xOC0uMDIzaC0uMDI4YS44LjggMCAwIDAtLjE5My4wMjZsLS4wMzguMDFhMSAxIDAgMCAwLS4xODguMDc3bC0xLjg0OCAxLjA2N2EyLjMyIDIuMzIgMCAwIDEtMi4zMTMgMGMtLjcxMi0uNDExLTEuMTU3LTEuMTgtMS4xNTctMi4wMDNzLjQ0Mi0xLjU5MSAxLjE1Ny0yLjAwM2wtLjAwMy0uMDFaTTEuNzYzIDE1LjkzMmwzLjY5NCAyLjEzNGEuODUuODUgMCAwIDAgLjg1NCAwbDMuNjk0LTIuMTM0cy4wMS0uMDA4LjAxNS0uMDFhLjguOCAwIDAgMCAuMTU3LS4xMjFsLjAyMS0uMDIzcS4wNi0uMDY3LjExMS0uMTQ0LjAwOC0uMDEuMDE1LS4wMjZhLjkuOSAwIDAgMCAuMTExLS40MjF2LTIuMTM0YTIuMzE0IDIuMzE0IDAgMCAxIDMuNDcxLTIuMDAybDEuODQ4IDEuMDY3YTEgMSAwIDAgMCAuMjI5LjA4N3EuMDk0LjAyMi4xOTMuMDI2aC4wMWwuMDIxLS4wMDNhLjguOCAwIDAgMCAuMzkxLS4xMDZsLjAxOC0uMDA4TDIwLjMxIDkuOThhLjg1Ljg1IDAgMCAwIC40MjctLjc0VjQuOTczYS44NS44NSAwIDAgMC0uNDI3LS43NGwtMy42OTQtMi4xMzRhLjg2Ljg2IDAgMCAwLS44NTYgMGwtMy42OTQgMi4xMzRzLS4wMS4wMDgtLjAxNS4wMWEuOC44IDAgMCAwLS4xNTcuMTIxbC0uMDIxLjAyM2ExIDEgMCAwIDAtLjExMS4xNDRxLS4wMDguMDEtLjAxNS4wMjZhLjkuOSAwIDAgMC0uMTExLjQyMnYyLjEzNGMwIC44MjMtLjQ0MiAxLjU5MS0xLjE1NyAyLjAwM2EyLjMzIDIuMzMgMCAwIDEtMi4zMTQgMEw2LjMxNyA4LjA0OWExIDEgMCAwIDAtLjIyOS0uMDg3IDEgMSAwIDAgMC0uMTkzLS4wMjZoLS4wMjhhLjguOCAwIDAgMC0uMzkxLjEwM2wtLjAxOC4wMDgtMy42OTQgMi4xMzRhLjg1Ljg1IDAgMCAwLS40MjcuNzR2NC4yNjdhLjg1Ljg1IDAgMCAwIC40MjcuNzR2LjAwNVptMTguNTQyIDEyLjA4Mi0zLjY5NC0yLjEzNC0uMDE4LS4wMDhhMSAxIDAgMCAwLS4xODMtLjA3NGwtLjAzMS0uMDA4YTEgMSAwIDAgMC0uMTgtLjAyM2gtLjAyOGEuOC44IDAgMCAwLS4xOTMuMDI2bC0uMDM5LjAxYTEgMSAwIDAgMC0uMTg4LjA3N2wtMS44NDggMS4wNjdhMi4zMiAyLjMyIDAgMCAxLTIuMzExIDAgMi4zMiAyLjMyIDAgMCAxLTEuMTU3LTIuMDAzVjIyLjgxYS44LjggMCAwIDAtLjAzNi0uMjQyIDEgMSAwIDAgMC0uMDc1LS4xOHEtLjAwOC0uMDEtLjAxNS0uMDI2YS44LjggMCAwIDAtLjExMS0uMTQ0bC0uMDItLjAyM2ExIDEgMCAwIDAtLjE1Ny0uMTIxbC0uMDE1LS4wMS0zLjY5NC0yLjEzNGEuODYuODYgMCAwIDAtLjg1NiAwbC0zLjY5NCAyLjEzNGEuODUuODUgMCAwIDAtLjQyNy43NHY0LjI2N2EuODUuODUgMCAwIDAgLjQyNy43NGwzLjY5NCAyLjEzNC4wMTguMDA4YTEgMSAwIDAgMCAuMTguMDc0bC4wMzEuMDA4YTEgMSAwIDAgMCAuMTc3LjAyM2wuMDIxLjAwMmguMDFxLjA5Ny0uMDAxLjE5LS4wMjYuMDItLjAwNi4wNDEtLjAxYTEgMSAwIDAgMCAuMTg4LS4wNzdMOC4xNiAyOC44OGEyLjMzIDIuMzMgMCAwIDEgMi4zMTQgMCAyLjMyIDIuMzIgMCAwIDEgMS4xNTcgMi4wMDN2Mi4xMzRxLjAwMS4xMDQuMDI2LjIwMS4wMDMuMDIuMDEuMDQxYTEgMSAwIDAgMCAuMDc1LjE4cS4wMDguMDEuMDE1LjAyNi4wNDYuMDc3LjExMS4xNDRsLjAyLjAyM3EuMDcuMDY4LjE1Ny4xMjEuMDA3LjAwNi4wMTYuMDFsMy42OTQgMi4xMzRhLjg1Ljg1IDAgMCAwIC44NTQgMGwzLjY5NC0yLjEzNGEuODUuODUgMCAwIDAgLjQyNy0uNzR2LTQuMjY3YS44NS44NSAwIDAgMC0uNDI3LS43NHoiLz48L3N2Zz4=&logoColor=D9E0EE">
    </a>
</h1>

<p align="center">
    <a href="https://github.com/ayamir/nvimdots/stargazers">
    <img
        alt="Stars"
        src="https://img.shields.io/github/stars/ayamir/nvimdots?colorA=363A4F&colorB=B7BDF8&logo=adafruit&logoColor=D9E0EE&style=for-the-badge">
    </a>
    <a href="https://github.com/ayamir/nvimdots/issues">
    <img
        alt="Issues"
        src="https://img.shields.io/github/issues-raw/ayamir/nvimdots?colorA=363A4f&colorB=F5A97F&logo=github&logoColor=D9E0EE&style=for-the-badge">
    </a>
    <a href="https://github.com/ayamir/nvimdots/contributors">
    <img
        alt="Contributors"
        src="https://img.shields.io/github/contributors/ayamir/nvimdots?colorA=363A4F&colorB=B5E8E0&logo=git&logoColor=D9E0EE&style=for-the-badge">
    </a>
    <img
        alt="Code Size"
        src="https://img.shields.io/github/languages/code-size/ayamir/nvimdots?colorA=363A4F&colorB=DDB6F2&logo=gitlfs&logoColor=D9E0EE&style=for-the-badge">
</p>


## Install Instructions

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

<div align="center">

| Branch | Supported Neovim version |
| :----: | :----------------------: |
|  main  |     nvim 0.11 stable     |
|  0.12  |    nvim 0.12 nightly     |
|  0.10  |        nvim 0.10         |
|  0.9   |         nvim 0.9         |

</div>

> [!IMPORTANT]
> The `0.12` branch is intended for nightly Neovim builds and is **not** stable. It typically harbors subtle issues scattered throughout. Therefore, refrain from submitting issues if you happen to encounter them. They will be closed directly unless a viable solution is proposed or included.

We currently manage plugins using [lazy.nvim](https://github.com/folke/lazy.nvim).

Chinese introduction is [here](https://zhuanlan.zhihu.com/p/382092667).

### 🎐 Features

- **Fast.** Less than **50ms** to start (Depends on SSD and CPU, tested on Zephyrus G14 2022 version).
- **Simple.** Runs out of the box.
- **Modern.** Pure `lua` config.
- **Modular.** Easy to customize.
- **Powerful.** Full functionality to code.

## 🏗 How to Install

Simply run the following interactive bootstrap command, and you should be all set 👍

- **Windows** _(Note: This script REQUIRES `pwsh` > `v7.1`)_

```pwsh
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.ps1'))
```

- **\*nix**

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
