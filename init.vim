" ============= Vim-Plug ============== "

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

" let g:vim_bootstrap_langs = "c"
" let g:vim_bootstrap_editor = "nvim"               " nvim or vim

if !filereadable(vimplug_exists)
    if !executable("curl")
        echoerr "You have to install curl or first install vim-plug yourself!"
        execute "q!"
    endif
    echo "Installing Vim-Plug..."
    echo ""
    silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    let g:not_finish_vimplug = "yes"

    autocmd VimEnter * PlugInstall
endif

" Required:
" call plug#begin(expand('~/.config/nvim/plugged'))
call plug#begin('~/.config/nvim/plugged')

" ================= Display ================== "
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'        " airline status bar
Plug 'vim-airline/vim-airline-themes' " airline themes
Plug 'romainl/vim-cool'               " disable hl until another search is performed
Plug 'psliwka/vim-smoothie'           " some very smooth ass scrolling
Plug 'ryanoasis/vim-devicons'         " pretty icons everywhere
Plug 'luochen1990/rainbow'            " rainbow paranthesis
Plug 'sheerun/vim-polyglot'           " syntax hilight for multi languages
Plug 'neovimhaskell/haskell-vim'      " syntax for haskell
Plug 'tmhedberg/simpylfold'
Plug 'Yggdroot/indentLine'            " show indentation lines
Plug 'google/vim-searchindex'         " add number of found matching search items
Plug 'junegunn/vim-peekaboo'          " register preview
Plug 'wellle/visual-split.vim'
Plug 'lambdalisue/vim-fullscreen'     " fullscreen
Plug 'junegunn/goyo.vim'              " zen mode
" Plug 'junegunn/limelight.vim'
Plug 'numirias/semshi',               {'do': ':UpdateRemotePlugins'}
Plug 'liuchengxu/vista.vim'           "display structure of context
Plug 'markonm/traces.vim'             "highlight and live preview for substitute and smagic
Plug 'neovimhaskell/haskell-vim'      "highlight of haskell

" ================= Move ================== "
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf',    { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " fuzzy search integration
if   has('nvim')        " defx
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" ================= Edit ================== "
Plug 'neoclide/coc.nvim',               {'branch': 'release'}
" Plug 'valloric/youcompleteme'
" Plug 'ervandew/supertab'
Plug 'w0rp/ale'                         "linting
" Plug 'SirVer/ultisnips'                 " snippets
Plug 'honza/vim-snippets'               " actual snippets
Plug 'junegunn/vim-easy-align'          " align
Plug 'tomtom/tcomment_vim'              " comment
Plug 'jiangmiao/auto-pairs'             " auto pairs
Plug 'tpope/vim-speeddating'            " edit dating
Plug 'tpope/vim-unimpaired'             " shortcust using pairs
Plug 'tpope/vim-abolish'                " substitution
Plug 'AndrewRadev/splitjoin.vim'        " split and join lines
Plug 'terryma/vim-multiple-cursors'     " vim-multiple-cursors
Plug 'chiel92/vim-autoformat'           " autoformat
Plug 'brglng/vim-im-select'             " input method
Plug 'farmergreg/vim-lastplace'         " open files at the last edited place
Plug 'kana/vim-repeat'                  " repead by dot

Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-entire'
Plug 'glts/vim-textobj-comment'
Plug 'machakann/vim-textobj-delimited'
Plug 'machakann/vim-sandwich'           " make sandwiches
Plug 'machakann/vim-swap'               " quick swap in tuples
Plug 'tpope/vim-surround'               " handle surrunds

Plug 'jalvesaq/nvim-r'                  " R
Plug 'jeetsukumaran/vim-pythonsense'    " handle python syntax obj
Plug 'chrisbra/csv.vim'                 " csv
Plug 'hotoo/pangu.vim'                  " Chinese
Plug 'wellle/tmux-complete.vim'         " complete words from a tmux panes

" ================= Exec ================== "
Plug 'skywind3000/asyncrun.vim'         " async run scipts
Plug 'KabbAmine/zeavim.vim'             " doc for all
Plug 'iamcco/markdown-preview.nvim',    { 'do': 'cd app & yarn install' } " markdown preview
Plug 'kristijanhusak/vim-carbon-now-sh' " lit code screenshots
Plug 'tpope/vim-fugitive'               " git support

call plug#end()



" ==================== general config ======================== "

colorscheme gruvbox
highlight Normal guibg=NONE ctermbg=None
set termguicolors                                       " Opaque Background
set mouse=a                                             " enable mouse scrolling
" set clipboard+=unnamedplus                              " use system clipboard by default

" ===================== Other Configurations ===================== "

filetype plugin indent on                               " enable indentations
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent            " tab key actions
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try furaCode)
set wrap breakindent                                    " wrap long lines to the width sset by tw
set encoding=utf-8                                      " text encoding
set number                                              " enable numbers on the left
set relativenumber                                      " current line is 0
set title                                               " tab title as file file
set conceallevel=2                                      " set this so we womt break indentation plugin
set splitright                                          " open vertical split to the right
" set splitbelow                                          " open horizontal split to the bottom
set tw=80                                               " auto wrap lines that are longer than that
set emoji                                               " enable emojis
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
au BufEnter * set fo-=c fo-=r fo-=o                     " stop annying auto commenting on new lines
set undofile                                            " enable persistent undo
set undodir=~/.nvim/tmp                                 " undo temp file directory
set nofoldenable                                        " disable folding


" " Coloring
" let g:material_style='molokai'
" set background=dark
let g:airline_theme='gruvbox'
highlight Pmenu guibg='00010a' guifg=white              " popup menu colors
highlight Comment gui=bold                              " bold comments
highlight Normal gui=none
highlight NonText guibg=none
highlight clear SignColumn                              " use number color for sign colum color
autocmd ColorScheme * highlight VertSplit cterm=NONE    " split color
hi NonText guifg=bg                                     " mask ~ on empty lines
hi clear CursorLineNr                                   " use the theme color for relative number
hi CursorLineNr gui=bold                                " make relative number bold

" colors for git (especially the gutter)
hi DiffAdd guibg='#0f111a'
hi DiffChange guibg='#0f111a'

" coc multi cursor highlight color
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

" Ale
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#FFA500

" performance tweaks
set nocursorline
set nocursorcolumn

set scrolljump=5
set lazyredraw
set synmaxcol=180
set re=1

" reg, breakline and bell
set magic
" Linebreak on 500 characters
set lbr
" set tw=500 和autoformat冲突

"edit experiences tricks

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


set noerrorbells
set novisualbell
set t_vb=
set tm=500

" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" tmux cursor shape
if exists('$TMUX')
    let &t_SI .= "\ePtmux;\e\e[=1c\e\\"
    let &t_EI .= "\ePtmux;\e\e[=2c\e\\"
else
    let &t_SI .= "\e[=1c"
    let &t_EI .= "\e[=2c"
endif


" ======================== Plugin Configurations ======================== "

" Airline
" let g:airline#themes#clean#palette = 1
call airline#parts#define_raw('linenr', '%l')
call airline#parts#define_accent('linenr', 'bold')
let g:airline_section_z = airline#section#create(['%3p%%  ',
            \ g:airline_symbols.linenr .' ', 'linenr', ':%c '])
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#fnamemod = ':t'        " show only file name on tabs
let g:airline#extensions#ale#enabled = 1                " ALE integration
let g:airline_skip_empty_sections = 1

"coc
"解决coc弹窗出错
if exists(':GuiPopupmenu') ==2
    GuiPopupmenu 0
endif
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=200

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gj <Plug>(coc-diagnostic-next)
nmap <silent> gk <Plug>(coc-diagnostic-prev)
nmap <silent> gk <Plug>(coc-diagnostic-references)

" Add diagnostic info for https://github.com/itchyny/lightline.vim
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction


"Coc-snippet
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" list of the extensions required
let g:coc_global_extensions = [
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-ultisnips',
            \'coc-xml',
            \'coc-syntax',
            \'coc-sql',
            \'coc-r-lsp',
            \]

            " \'coc-ccls',
            " \'coc-python',

"ale
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 0
let g:ale_set_highlights = 0
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"文件内容发生变化时不进行检查
" let g:ale_lint_on_text_changed = 'always'
"打开文件时不进行检查
let g:ale_lint_on_enter = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_linters = {'python': ['flake8','pylint']}
let g:ale_linters_ignore = {'python': ['pylint']}
"添加检测完成后回调
augroup YourGroup
    autocmd!
    autocmd User ALELint call YourFunction()
augroup END
let b:ale_fixers = ['flake8','isort']


" auto save file changes
let g:auto_save = 1                                     " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1                       " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0                      " do not save while in insert mode
let g:auto_save_silent = 1

" rainbow brackets
let g:rainbow_active = 1


" easymotion
let g:EasyMotion_startofline = 0                        " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1                          " ignore case
map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)

"" FZF

" general
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
let $FZF_DEFAULT_OPTS="--reverse " " top to bottom
let g:fzf_buffers_jump=1

" use rg by default
if executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
    set grepprg=rg\ --vimgrep
    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" ======================== Filetype-Specific Configurations ============================= "

" Markdown
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType markdown set spell

" config files
au BufReadPost,BufNewFile */polybar/* set filetype=dosini


" auto html tags closing, enable for markdown files as well
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.md'

" disable autosave on kernel directory and also formatting on save (we dont wanna fuck this up)
autocmd BufRead,BufNewFile */Dark-Ages/* let b:auto_save = 0
autocmd BufRead,BufNewFile */Dark-Ages/* let b:ale_fix_on_save = 0

" ================== Custom Functions ===================== "

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction


" tabs manipulation
function! Rotate() " switch between horizontal and vertical split mode for open splits
    " save the original position, jump to the first window
    let initial = winnr()
    exe 1 . "wincmd w"

    wincmd l
    if winnr() != 1
        " succeeded moving to the right window
        wincmd J                " make it the bot window
    else
        " cannot move to the right, so we are at the top
        wincmd H                " make it the left window
    endif

    " restore cursor to the initial window
    exe initial . "wincmd w"
endfunction

nnoremap <F5> :call Rotate()<CR>


" floating fzf window with borders
function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

" Files + devicons + floating fzf
function! Fzf_dev()
    let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'
    function! s:files()
        let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
        return s:prepend_icon(l:files)
    endfunction

    function! s:prepend_icon(candidates)
        let l:result = []
        for l:candidate in a:candidates
            let l:filename = fnamemodify(l:candidate, ':p:t')
            let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
            call add(l:result, printf('%s %s', l:icon, l:candidate))
        endfor

        return l:result
    endfunction

    function! s:edit_file(item)
        let l:pos = stridx(a:item, ' ')
        let l:file_path = a:item[pos+1:-1]
        execute 'silent e' l:file_path
    endfunction

    call fzf#run({
                \ 'source': <sid>files(),
                \ 'sink':   function('s:edit_file'),
                \ 'options': '-m --reverse ' . l:fzf_files_options,
                \ 'down':    '40%',
                \ 'window': 'call CreateCenteredFloatingWindow()'})


endfunction

" ======================== Custom Mappings ====================== "

" the essentials

" " use a different buffer for dd
" nnoremap d "_d
" vnoremap d "_d

"" coc mappings

" " multi cursor shortcuts
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-a> <Plug>(coc-cursors-word)
xmap <silent> <C-a> <Plug>(coc-cursors-range)

" " for project wide search
map <leader>/ :Ag<CR>

" ======================== Meta Config ====================== "
let mapleader=";"
" nnoremap ; :
nmap <leader>R :so ~/.config/nvim/init.vim<CR>
noremap <leader>I :PlugInstall<CR>
" nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

" ======================== Move ====================== "
" nnoremap <silent> <leader>f :call Fzf_dev()<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :BLine<CR>
nnoremap <silent> <Leader>a :Ag<CR>
nnoremap <silent> <Leader>B :Buffers<CR>
nnoremap <silent> <Leader>l :Line<CR>
nnoremap <silent> <Leader>t :Windows<CR>
inoremap jk <ESC>

" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" switch between splits using ctrl + {h,j,k,l}
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
noremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <leader>e :Defx `expand('%:p:h')` -search=`expand('%:p')`  -split=vertical -winwidth=50 -direction=botright -toggle <CR>
" noremap <leader>e :Defx `expand('%:p:h')` -search=`expand('%:p')`  -split=vertical -winwidth=100 -direction=topleft -toggle <CR>

" defx config
call defx#custom#option('_', {
            \ 'winwidth': 20,
            \ 'split': 'vertical',
            \ 'direction': 'botleft',
            \ 'show_ignored_files': 0,
            \ 'buffer_name': 'defx',
            \ 'toggle': 1,
            \ 'resume': 1
            \ })

call defx#custom#column('icon', {
            \ 'directory_icon': '>',
            \ 'opened_icon': 'v',
            \ 'root_icon': ' ',
            \ })

call defx#custom#column('filename', {
            \ 'min_width': 40,
            \ 'max_width': 40,
            \ })

call defx#custom#column('mark', {
            \ 'readonly_icon': '✗',
            \ 'selected_icon': '✓',
            \ })


""leetcode
"nnoremap <leader>ll :LeetCodeList<cr>
"nnoremap <leader>lt :LeetCodeTest<cr>
"nnoremap <leader>ls :LeetCodeSubmit<cr>
"nnoremap <leader>li :LeetCodeSignIn<cr>

"defx
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>
                \ defx#do_action('open')
    " nnoremap <silent><buffer><expr> I
    "             \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> i
                \ defx#do_action('multi',['drop','quit'])
    nnoremap <silent><buffer><expr> c
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('open')
    " nnoremap <silent><buffer><expr> E
    "             \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> s
                \ defx#do_action('multi',[['drop','split'],'quit'])
    nnoremap <silent><buffer><expr> v
                \ defx#do_action('multi',[['drop','vsplit'],'quit'])
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> o
                \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> O
                \ defx#do_action('open_tree_recursive')
    nnoremap <silent><buffer><expr> K
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
                \ defx#do_action('toggle_columns',
                \                'mark:indent:icon:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
                \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
                \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
                \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
endfunction


" map <silent> <leader>j :Defx -columns=mark:indent:icon:filename:type:size:time
"             \           -split=vertical -winwidth=40 -direction=topleft getcwd() -search=expand('%:p')<cr>

autocmd BufWritePost * call defx#redraw()

" tags
nmap <leader>v :Vista!! <CR>
" nmap <leader>v :Vista show<CR>  :Vista focus<CR>
nmap <leader>V :Vista finder<CR>
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_position = 'vertical topleft'

" ======================== Display ====================== "
nmap <leader>g :Goyo<CR>
" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

"simpylfold
let g:SimpylFold_docstring_preview = 1
set nofoldenable    " disable folding
nnoremap <space> za
vnoremap <space> zf

function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nmap <leader>z :call Zoom()<CR>
set previewheight=3
nmap <leader>h :pedit <CR>
map <leader>H :pc <CR>

" let g:semshi#simplify_markup = v:true

" ======================== Edit ====================== "
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" for global rename
nmap <leader>rn <Plug>(coc-rename)

" Easyalign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"text-obj
map <buffer> aC <Plug>(PythonsenseOuterClassTextObject)
map <buffer> iC <Plug>(PythonsenseInnerClassTextObject)
"test-obj vim-swap
omap i, <Plug>(swap-textobject-i)
xmap i, <Plug>(swap-textobject-i)
omap a, <Plug>(swap-textobject-a)
xmap a, <Plug>(swap-textobject-a)

autocmd FileType vim,tex,rmarkdown,rmd,markdown,todo,yaml,yml let b:autoformat_autoindent=0
"nvim-R
let g:R_assign = 0
let R_complete = 1
let R_show_args = 1
let R_openhtml=1
let R_latexcmd = 'xelatex'

" csv
aug CSV_Editing
    au!
    au BufRead,BufWritePost *.csv :%ArrangeColumn
    au BufWritePre *.csv :%UnArrangeColumn
aug end


"AutoPairs
let g:AutoPairsFlyMode = 1

"input method
" The input method for Normal mode (as defined by `xkbswitch -g` or `ibus engine`)
let g:barbaric_default = 0
" The scope where alternate input methods persist (buffer, window, tab, global)
let g:barbaric_scope = 'buffer'
" Forget alternate input method after n seconds in Normal mode (disabled by default)
" Useful if you only need IM persistence for short bursts of active work.
let g:barbaric_timeout = -1


nmap <Leader>cd  <Plug>(coc-codelens-action)

"autoformat
noremap <F3> :Autoformat<CR>
let g:formatterpath = ['python', 'black']
autocmd FileType vim,tex,rmarkdown,rmd,markdown,todo,yaml,yml let b:autoformat_autoindent=0
au BufWrite * :Autoformat

" ======================== Exec ====================== "
" carbon sh now
vnoremap <F8> :CarbonNowSh<CR>

"python
nnoremap <silent> <Leader>r :call CompileRunGcc()<cr>

func! CompileRunGcc()
    exec "w"
    let l:quickfix_height = float2nr(winheight("%")/2.618)
    if &filetype == 'python'
        if search("@profile")
            exec "AsyncRun kernprof -l -v %"
            exec "rightbelow copen".quickfix_height
            " exec "vertical rightbelow copen 75"
            " exec "copen"
            exec "wincmd p"
        elseif search("set_trace()")
            exec "!python %"
        else
            exec "AsyncRun -raw pytype % && python %"
            " exec "AsyncRun -raw mypy % && python %"
            " exec "AsyncRun -raw python %"
            "在右边开启quickfix窗口
            " exec "rightbelow copen 7"
            exec "rightbelow copen ".quickfix_height
            " exec "copen"
            exec "wincmd p"
            " exec "vertical rightbelow copen 75"
            " " exec "copen"
            " exec "wincmd p"
        endif
    elseif &filetype == 'c'
        " exec "AsyncRun -raw LC_ALL=C gcc % -o %< -Wall && %< "
        exec "AsyncRun -raw LC_ALL=C gcc % -o %< -Wall && ./%< "
        " exec "vertical rightbelow copen 75"
        exec "rightbelow copen ".quickfix_height
        " exec "copen"
        exec "wincmd p"
        exec "let w:quickfix_title = 'foo'"
    elseif &filetype == 'tex'
        exec "AsyncRun -raw xelatex % "
        exec "rightbelow copen ".quickfix_height
        " exec "copen"
        exec "wincmd p"
        exec "let w:quickfix_title = 'foo'"
    endif

endfunc

"zeal map
nnoremap gz :!zeal "<cword>"&<CR><CR>
" let g:python3_host_prog = '$HOME/.pyenv/versions/data376_YCM/bin/python'
" let g:ycm_auto_trigger=1
" let g:ycm_seed_identifiers_with_syntax = 1
