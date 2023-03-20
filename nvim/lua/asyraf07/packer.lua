vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    -- theme
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'shaunsingh/nord.nvim' }
    use { 'marko-cerovac/material.nvim' }
    use { 'rebelot/kanagawa.nvim' }
    use { 'folke/tokyonight.nvim' }
    use { 'EdenEast/nightfox.nvim' }
    use { 'projekt0n/github-nvim-theme', tag = 'v0.0.7' }
    use { 'AlexvZyl/nordic.nvim' }

    use(
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    )

    use 'nvim-treesitter/playground'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'terrortylor/nvim-comment'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    -- Formatter
    use 'jose-elias-alvarez/null-ls.nvim'

    use 'kyazdani42/nvim-web-devicons' -- lualine logo
    use 'nvim-lualine/lualine.nvim'

    use 'nvim-tree/nvim-web-devicons' -- nvim-tree logo
    use 'nvim-tree/nvim-tree.lua'

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Flutter
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }


    -- Customization
    -- Dressing vim ui
    use {
        "stevearc/dressing.nvim",
        event = "BufReadPre",
        config = function()
            require("dressing").setup {
                input = { relative = "editor" },
                select = {
                    backend = { "telescope", "fzf", "builtin" },
                },
            }
        end,
        disable = false,
    }

    -- Options var
    use { "ap/vim-css-color" }
end)
