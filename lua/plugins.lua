return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-web-devicons'

    use 'nvim-tree/nvim-tree.lua'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'gmr458/vscode_modern_theme.nvim',
        config = function()
            require("vscode_modern").setup({
                cursorline = true,
                transparent_background = false,
                nvim_tree_darker = true,
            })
            vim.cmd.colorscheme('vscode_modern')
        end,
    }

    use { 'neovim/nvim-lspconfig' }

    use {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        opt = true,
        config = function()
            require("config.cmp").setup()
        end,
        wants = { "LuaSnip" },
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "ray-x/cmp-treesitter",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-calc",
            "f3fora/cmp-spell",
            "hrsh7th/cmp-emoji",
            {
                "L3MON4D3/LuaSnip",
                wants = "friendly-snippets",
                config = function()
                require("config.luasnip").setup()
                end,
            },
            "rafamadriz/friendly-snippets",
            disable = false,
        },
    }

    use 'github/copilot.vim'

    use 'wfxr/minimap.vim'

end)

