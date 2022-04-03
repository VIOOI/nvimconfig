let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let EasyMotion_smartcase =  0 
let EasyMotion_off_screen_search =  1 
let EasyMotion_startofline =  1 
let EasyMotion_move_highlight =  1 
let EasyMotion_show_prompt =  1 
let EasyMotion_disable_two_key_combo =  0 
let EasyMotion_prompt = "Search for {n} character(s): "
let EasyMotion_use_regexp =  1 
let EasyMotion_use_migemo =  0 
let Lf_StlColorscheme = "one"
let EasyMotion_verbose =  1 
let VM_Insert_hl = "Cursor"
let EasyMotion_force_csapprox =  0 
let EasyMotion_loaded =  1 
let VM_Mono_hl = "Cursor"
let NetrwTopLvlMenu = "Netrw."
let VM_Cursor_hl = "Cursor"
let EasyMotion_enter_jump_first =  0 
let VM_Extend_hl = "Visual"
let EasyMotion_add_search_history =  1 
let EasyMotion_do_shade =  1 
let NetrwMenuPriority =  80 
let EasyMotion_use_upper =  0 
let EasyMotion_cursor_highlight =  1 
let EasyMotion_do_mapping =  1 
let EasyMotion_grouping =  1 
let EasyMotion_landing_highlight =  0 
let EasyMotion_inc_highlight =  1 
let EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj;"
let EasyMotion_space_jump_first =  0 
let EasyMotion_skipfoldedline =  1 
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/.config/nvim
tabnew
tabnew
tabrewind
edit init.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 104 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 103 + 104) / 208)
argglobal
balt init.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 60 - ((33 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 60
normal! 01|
lcd ~/.config/nvim
wincmd w
argglobal
if bufexists("~/.config/nvim/lua/options.lua") | buffer ~/.config/nvim/lua/options.lua | else | edit ~/.config/nvim/lua/options.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/options.lua
endif
balt ~/.config/nvim/init.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 25 - ((24 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 044|
lcd ~/.config/nvim
wincmd w
exe 'vert 1resize ' . ((&columns * 104 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 103 + 104) / 208)
tabnext
edit ~/.config/nvim/lua/keymaps.lua
argglobal
balt ~/.config/nvim/lua/keymaps.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 42 - ((38 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 0
lcd ~/.config/nvim
tabnext
edit ~/.config/nvim/lua/plugin/treesitter.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 103 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 104 + 104) / 208)
argglobal
balt ~/.config/nvim/lua/plugin/telescope.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 95 - ((31 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 95
normal! 046|
lcd ~/.config/nvim
wincmd w
argglobal
if bufexists("~/.config/nvim/lua/plugsett.lua") | buffer ~/.config/nvim/lua/plugsett.lua | else | edit ~/.config/nvim/lua/plugsett.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/plugsett.lua
endif
balt ~/.config/nvim/lua/plugin/lsp-cmp.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 14 - ((13 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 045|
lcd ~/.config/nvim
wincmd w
exe 'vert 1resize ' . ((&columns * 103 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 104 + 104) / 208)
tabnext 3
badd +54 ~/.config/nvim/init.lua
badd +1 ~/.config/nvim
badd +1 ~/.config/nvim/lua/keymaps.lua
badd +5 ~/.config/nvim/lua/plugin/autosave.lua
badd +1 ~/.config/nvim/lua/options.lua
badd +14 ~/.config/nvim/lua/plugsett.lua
badd +2 ~/.config/nvim/lua/plugin/lsp-cmp.lua
badd +1 ~/.config/nvim/lua/plugin/hardline.lua
badd +19 ~/.config/nvim/lua/plugin/lspsaga.lua
badd +1 ~/.config/nvim/lua/plugin/telescope.lua
badd +95 ~/.config/nvim/lua/plugin/treesitter.lua
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOF
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
