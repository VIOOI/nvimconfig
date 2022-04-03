--			________   ________  _______   _______    ________  
--		   ╱    ╱   ╲ ╱        ╲╱       ╲╲╱       ╲╲ ╱        ╲ 
--		  ╱         ╱_╱       ╱╱        ╱╱        ╱╱_╱       ╱  
--		  ╲        ╱╱         ╱         ╱         ╱╱         ╱  
--		  ╲╲_____╱ ╲╲_______╱╲________╱╲________╱ ╲╲_______╱   

--			_______  _______    _______   _______   ________   _______ 
--		   ╱╱       ╲╱       ╲╲╱╱   ╱   ╲╱╱       ╲ ╱        ╲╱╱       ╲
--		  ╱╱        ╱        ╱╱╱        ╱╱      __╱_╱       ╱╱╱      __╱
--		  ╱       --╱         ╱         ╱        _╱╱         ╱       ╱ ╱ 
--		  ╲________╱╲________╱╲__╱_____╱╲_______╱  ╲╲_______╱╲________╱  

local cmd = vim.cmd
local packer = require('packer')

function get_setup(name)
  return string.format('require("setup/%s")', name)
end


cmd [[packadd packer.nvim]]
packer.startup(function(use) --  Plugins

	use 'wbthomason/packer.nvim'	-- Украшения
	use 'sainnhe/sonokai'
	use 'kyazdani42/nvim-web-devicons'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }		-- Синтаксис
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'nvim-treesitter/nvim-treesitter-refactor'

	use { 'neovim/nvim-lspconfig',		-- LSP
		'williamboman/nvim-lsp-installer', }
	use 'onsails/lspkind-nvim'
	use 'tami5/lspsaga.nvim'

	use 'hrsh7th/cmp-nvim-lsp'		-- Автозавершения
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'

	use 'L3MON4D3/LuaSnip'		-- Snippets

	use {"akinsho/toggleterm.nvim"}		-- Терминал
	use 'lewis6991/gitsigns.nvim'		-- GIT статус
	-- use 'jubnzv/virtual-types.nvim'		-- Виртуальный показ типов
	
	use {		-- telescope
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'easymotion/vim-easymotion' -- Быстрое перемещение
	use 'haya14busa/incsearch.vim'
	use 'haya14busa/incsearch-easymotion.vim'

	use 'famiu/bufdelete.nvim' -- Удаление буфера
	use 'ojroques/nvim-hardline' -- statusline / bufferline
	use {		-- Коментарии
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'Pocco81/AutoSave.nvim'		-- Автосохранения

end)

require('options') -- Options
require('keymaps') -- Keymaps
require('plugsett') -- Plugin settings
require('lspconf')

cmd('colorscheme sonokai')
