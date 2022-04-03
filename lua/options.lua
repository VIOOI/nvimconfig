local opt = vim.opt
local cmd = vim.api.nvim_command


opt.number = true 
opt.scrolloff = 7
opt.clipboard = 'unnamed'
opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwx'
opt.showtabline = 2
opt.encoding = 'utf-8'
opt.fileencodings = 'utf8,cp1251'
opt.tags = './tags,tags;$HOME'
opt.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,tabpages,globals'
opt.smarttab = true
opt.linebreak = true
opt.tabstop = 2 
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.colorcolumn = '76'
opt.cursorline = true

cmd('set backspace=indent,eol,start whichwrap+=<,>,[,]')
cmd('set visualbell t_vb=')
cmd('set list listchars=eol:↲,tab:→\\ ,trail:·,extends:⟩,precedes:⟨,space:·')

