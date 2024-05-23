-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
       'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
        requires = {'nvim-lua/plenary.nvim'}
    }

    --Color Scheme
    use {'catppuccin/nvim', as = "catppuccin"}

    --Text highlighting
    use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}

    --auto comment/uncomment with gc
    use 'numtostr/comment.nvim'

    --adds a sticky to switch between files. <leader>a to add, <C-e> to view, <C-h>, <C-t>, <C-s>, <C-n> to switch
    use 'theprimeagen/harpoon'

    --view the undo tree and interact with it
    use 'mbbill/undotree'

    --detect tabstop and shiftwidth automagically
    use 'tpope/vim-sleuth'

    --not sure
    use 'tpope/vim-fugitive'

    --language server provider. Integrates lspconfig and something else.
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
	    --- Uncomment the two plugins below if you want to manage the language servers from neovim
	    'williamboman/mason.nvim',
	    'williamboman/mason-lspconfig.nvim',
	    'neovim/nvim-lspconfig',
	    'hrsh7th/nvim-cmp',
	    'hrsh7th/cmp-nvim-lsp',
	    'L3MON4D3/LuaSnip',
	  }
	}

    -- Adds git related signs to the gutter, as well as utilities for managing changes
    -- see :help gitsigns
    use 'lewis6991/gitsigns.nvim'

    --Shows pending keybinds
    use 'folke/which-key.nvim'
end)

