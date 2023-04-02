local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup()
    end
  }
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')

  use {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup()
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
      require('scrollbar.handlers.gitsigns').setup()
    end
  }
  use('tpope/vim-fugitive')


  -- editorconfig
  use 'editorconfig/editorconfig-vim'

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      { 'L3MON4D3/LuaSnip' },
		  { 'rafamadriz/friendly-snippets' },
    }
  }

  -- lsp icon support
  use('onsails/lspkind-nvim')

  -- symbols outline
  use {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('symbols-outline').setup()
    end
  }

  -- makes todo comments stand out
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('todo-comments').setup()
    end
  }

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- all the icons you need
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup()
    end
  }

  -- github copilot auto-completion
  -- use 'github/copilot.vim'

  -- colorschemes
  use {
    'morhetz/gruvbox',
    config = function ()
      vim.cmd('colorscheme gruvbox')
    end
  }

  -- Automatically syncronise packer after inital install, must be at the end. 
  if packer_bootstrap then
    require('packer').sync()
  end
end)
