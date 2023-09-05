return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'Mofiqul/dracula.nvim'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
--	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
    use 'onsails/lspkind-nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	use 'easymotion/vim-easymotion'
	use 'nvim-lua/plenary.nvim'
	use 'BurntSushi/ripgrep'
	use 'sharkdp/fd'
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }
	use { "akinsho/toggleterm.nvim", tag = '*' }
	use 'folke/lsp-colors.nvim'
	use "folke/trouble.nvim"
	use 'nvim-lualine/lualine.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'
	use "windwp/nvim-autopairs"
    use "mbbill/undotree"
    use 'nvim-tree/nvim-web-devicons'
    use "tpope/vim-commentary"
    use "tpope/vim-surround"
    use "romgrk/barbar.nvim"
    use "vimwiki/vimwiki"
    use "christoomey/vim-tmux-navigator"
    use "xiyaowong/transparent.nvim"
    use "camgraff/telescope-tmux.nvim"
    use "kevinhwang91/rnvimr"
    use "tpope/vim-projectionist"
end)
