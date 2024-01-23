return require('packer').startup(function(use)
    -- Packer used for plugin installs
	use 'wbthomason/packer.nvim'
    -- LSP support
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig'
    use "nvim-tree/nvim-tree.lua"
    use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
    })
    use({
      "jackMort/ChatGPT.nvim",
        requires = {
          "MunifTanjim/nui.nvim",
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope.nvim"
        }
    })
    -- Rust
    use "mrcjkb/rustaceanvim"
    -- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Icons for LSP suggestions
    use 'onsails/lspkind-nvim'
    -- Completion suggestions
    -- multiple plugins are loaded to support different
    -- completion sources
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
	-- use 'rafamadriz/friendly-snippets'
    -- Provides navigation shortcuts
	use 'easymotion/vim-easymotion'
	use 'nvim-lua/plenary.nvim'
	use 'BurntSushi/ripgrep'
	use 'sharkdp/fd'
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }
	use { "akinsho/toggleterm.nvim", tag = '*' }
	-- use 'folke/lsp-colors.nvim'
    -- Provides diagnotic info
	use "folke/trouble.nvim"
    -- Line at bottom of the buffer
	use 'nvim-lualine/lualine.nvim'
    -- Linting DEPRECATED need to find replacement
	use 'jose-elias-alvarez/null-ls.nvim'
    -- Closes paired symbols
	use "windwp/nvim-autopairs"
    -- Undo tree visualizer
    use "mbbill/undotree"
    -- Provides icons for nvim 
    use 'nvim-tree/nvim-web-devicons'
    -- Helps with comments
    use "tpope/vim-commentary"
    -- Easily surround text objects
    use "tpope/vim-surround"
    -- Top bar
    use "romgrk/barbar.nvim"
    -- use "vimwiki/vimwiki"
    -- Allows navigating tmux panes with vim shortcuts
    use "christoomey/vim-tmux-navigator"
    -- use "xiyaowong/transparent.nvim"
    -- Searching through tmux sessions with telescope
    use "camgraff/telescope-tmux.nvim"
    -- Ranger for nvim
    use "kevinhwang91/rnvimr"
    -- Customize paired files and templates
    use "tpope/vim-projectionist"
    -- Color theme
    use "folke/tokyonight.nvim"
end)
