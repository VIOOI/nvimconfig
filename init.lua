local cmd = vim.cmd
local packer = require('packer')

function get_setup(name)
  return string.format('require("setup/%s")', name)
end



cmd [[packadd packer.nvim]]
packer.startup(function(use) --  Plugins

	use 'sainnhe/sonokai'					--> sonokai
	use "rebelot/kanagawa.nvim"		--> kanagawa
	use "projekt0n/github-nvim-theme"		--> github
	use 'Mofiqul/vscode.nvim'
	use 'navarasu/onedark.nvim'

	use 'wbthomason/packer.nvim'	--> Украшения
	use 'kyazdani42/nvim-web-devicons'
	-- use "lukas-reineke/indent-blankline.nvim"			--> Направляющие отступов

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }		--> Синтаксис
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'nvim-treesitter/nvim-treesitter-refactor'

	use { 'neovim/nvim-lspconfig',		--> LSP
		'williamboman/nvim-lsp-installer', }
	use 'onsails/lspkind-nvim'
	use 'tami5/lspsaga.nvim'
	use 'JASONews/glow-hover'

	use 'hrsh7th/cmp-nvim-lsp'		--> Автозавершения
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'

	-- use "b0o/schemastore.nvim"		--> JSON SchemaStore

	use 'folke/lsp-colors.nvim'			--> Кодсветка ошибок
	use 'folke/trouble.nvim'		--> Диагностика ошибок

	use 'L3MON4D3/LuaSnip'		--> Snippets
	use 'saadparwaiz1/cmp_luasnip'
	use "rafamadriz/friendly-snippets"

	use {"akinsho/toggleterm.nvim"}		--> Терминал
	use 'lewis6991/gitsigns.nvim'		--> GIT статус
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
	use 'jubnzv/virtual-types.nvim'		--> Виртуальный показ типов
	use 'chentoast/marks.nvim'		--> Маркеры
	
	use {														--> telescope
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'easymotion/vim-easymotion' --> Быстрое перемещение
	use 'haya14busa/incsearch.vim'
	use 'haya14busa/incsearch-easymotion.vim'
	use 'Jorengarenar/vim-MvVis'		--> Перемещение выделеных блоков
	use 'ap/vim-css-color'		--> Подсветка css цветов

	-- use 'famiu/bufdelete.nvim' --> Удаление буфера
	use 'ojroques/nvim-hardline' --> statusline / bufferline
	use 'nanozuki/tabby.nvim'
	use {												--> Коментарии
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use 'francoiscabrol/ranger.vim'			--> Ranger
	use 'rbgrouleff/bclose.vim'

	use 'Pocco81/AutoSave.nvim'		--> Автосохранения
	use 'jiangmiao/auto-pairs'		--> Добавление скобок
	-- use 'xolox/vim-session'			--> Сессии в NeoVim

	use 'lewis6991/impatient.nvim'		--> Ускорение Neovim

	--	--	--	--	--	--	--
	use 'rcarriga/nvim-notify'		--> Красивые уведомления
	use { "ellisonleao/gruvbox.nvim" }
	--	--	--	--	--	--	--

end)


require('options') -- Options
require('keymaps') -- Keymaps
require('plugsett') -- Plugin settings

