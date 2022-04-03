
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'jk', '<esc>')
map('n', '<S-u>', ':redo<cr>')
map('n', ',<space>', ':nohlsearch<CR>')

map('n', '<M-Right>', ':vertical resize +1<CR>')
map('n', '<M-Left>', ':vertical resize -1<CR>')
map('n', '<M-Down>', ':resize +1<CR>')
map('n', '<M-Up>', ':resize -1<CR>')

map('n', 'ss', '<Plug>(easymotion-s)', {noremap = false})
map('n', 'Ss', '<Plug>(easymotion-s2)', {noremap = false})
map('n', 'sl', '<Plug>(easymotion-overwin-line)', {noremap = false})
map('n', 'sw', '<Plug>(easymotion-overwin-w)', {noremap = false})

map('n', '/', '<Plug>(incsearch-forward)', {noremap = false})
map('n', '?', '<Plug>(incsearch-backward)', {noremap = false})
map('n', 'g/', '<Plug>(incsearch-stay)', {noremap = false})
map('n', 'z/', '<Plug>(incsearch-easymotion-/)', {noremap = false})
map('n', 'z?', '<Plug>(incsearch-easymotion-?)', {noremap = false})
map('n', 'zg/', '<Plug>(incsearch-easymotion-stay)', {noremap = false})


map('n', '<C-k>', '<C-w><up>', {noremap = false})
map('n', '<C-j>', '<C-w><down>', {noremap = false})
map('n', '<C-h>', '<C-w><left>', {noremap = false})
map('n', '<C-l>', '<C-w><right>', {noremap = false})

map('n', '<C-t>c', ':tabnew<CR>')
map('n', '<C-t>n', ':tabnext<CR>')
map('n', '<C-t>p', ':tabprevious<CR>')
map('n', '<C-t>d', ':tabclose<CR>')
map('n', '<C-t>l', ':tablast<CR>')
map('n', '<C-t>f', ':tabfirst<CR>')

map('n', '<C-f>h', ':lua require("telescope.builtin").help_tags()<cr>', {noremap = false})
map('n', '<C-f>f', ':lua require("telescope.builtin").find_files()<cr>', {noremap = false})
map('n', '<C-f>r', ':lua require("telescope.builtin").live_grep()<cr>', {noremap = false})
map('n', '<C-f>b', ':lua require("telescope.builtin").buffers()<cr>', {noremap = false})
map('n', '<C-f>R', ':FloatermNew ranger<cr>', {noremap = false})

map('n', '<C-f>v', ':ToggleTerm size=80 direction=vertical<cr>', {noremap = false})
map('n', '<C-f>h', ':ToggleTerm size=15 direction=horizontal<cr>', {noremap = false})
map('n', '<C-f>c', ':ToggleTerm size=15 direction=float<cr>', {noremap = false})

map('n', 'zm', ':setlocal foldmethod=manual<CR>')
map('n', 'zi', ':setlocal foldmethod=indent<CR>')
map('n', 'zs', ':setlocal foldmethod=syntax<CR>')
map('n', 'ze', ':setlocal foldmethod=expr<CR>')
map('n', 'zk', ':setlocal foldmethod=marker<CR>')
map('n', 'zd', ':setlocal foldmethod=diff<CR>')
