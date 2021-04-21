" ============= Vim-Plug ============== "

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')


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
Plug 'sainnhe/gruvbox-material'
Plug 'junegunn/seoul256.vim'
" Plug 'fatih/molokai'
Plug 'jaredgorski/spacecamp'
Plug 'flazz/vim-colorschemes'
Plug 'ashfinal/vim-colors-violet'

Plug 'itchyny/lightline.vim'      " lightline
Plug 'sainnhe/artify.vim'         " change font disply
Plug 'rmolin88/pomodoro.vim'      " pomodoro timer
Plug 'romainl/vim-cool'           " disable hl until another search is performed
Plug 'psliwka/vim-smoothie'       " some very smooth ass scrolling
Plug 'ryanoasis/vim-devicons'     " pretty icons everywhere
Plug 'luochen1990/rainbow'        " rainbow paranthesis
Plug 'sheerun/vim-polyglot'       " syntax hilight for multi languages
Plug 'neovimhaskell/haskell-vim'  " syntax for haskell
Plug 'tmhedberg/simpylfold'
Plug 'Yggdroot/indentLine'        " show indentation lines
Plug 'google/vim-searchindex'     " add number of found matching search items
Plug 'junegunn/vim-peekaboo'      " register preview
Plug 'wellle/visual-split.vim'
Plug 'lambdalisue/vim-fullscreen' " fullscreen for gui
Plug 'junegunn/goyo.vim'          " zen mode
Plug 'numirias/semshi',           {'do': ':UpdateRemotePlugins'}
Plug 'liuchengxu/vista.vim'       "display structure of context
Plug 'markonm/traces.vim'         "highlight and live preview for substitute and smagic
Plug 'godlygeek/tabular'          "markdown
Plug 'plasticboy/vim-markdown'    "markdown extension
Plug 'arzg/vim-rust-syntax-ext'   "rust highlight extension
Plug 'voldikss/vim-floaterm'      "float window
Plug 'Jorengarenar/vim-syntaxMarkerFold' "enable custom fold while syntax folder is on
Plug 'Xuyuanp/scrollbar.nvim'     "scrollbar
Plug 'itchyny/vim-cursorword'     "add underline for cursorword

" ================= Move ================== "
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf',    { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " fuzzy search integration
Plug 'tpope/vim-vinegar'              " another split file explore
Plug 'takac/vim-hardtime'             " no jjjjkkkkk
Plug 'jdhao/better-escape.vim'        "quick escape
Plug 'christoomey/vim-tmux-navigator' "move between tmux and vim

" ================= Edit ================== "
Plug 'neoclide/coc.nvim',               {'branch': 'release'}
Plug 'honza/vim-snippets'               " snippets tool
Plug 'SirVer/ultisnips'                 " snippets source

Plug 'junegunn/vim-easy-align'          " align
Plug 'tomtom/tcomment_vim'              " comment
Plug 'jiangmiao/auto-pairs'             " auto pairs
Plug 'tpope/vim-speeddating'            " edit dating
Plug 'mjbrownie/swapit'                 " swith between true and false combined with speeddating
Plug 'tpope/vim-unimpaired'             " shortcust using pairs
Plug 'tpope/vim-abolish'                " smarter substitution
Plug 'AndrewRadev/splitjoin.vim'        " split and join lines gS gJ
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " multiple cursor
Plug 'chiel92/vim-autoformat'           " autoformat
Plug 'brglng/vim-im-select'             " input method
Plug 'tmux-plugins/vim-tmux-focus-events' " auto select im in tmux
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
Plug 'michaeljsmith/vim-indent-object'  " regard indent as text object

Plug 'jalvesaq/nvim-r'                  " R
Plug 'jeetsukumaran/vim-pythonsense'    " handle python syntax obj
Plug 'chrisbra/csv.vim'                 " csv
Plug 'dkarter/bullets.vim'              " markdown
Plug 'hotoo/pangu.vim'                  " Chinese
Plug 'wellle/tmux-complete.vim'         " complete words from a tmux panes
Plug 'dhruvasagar/vim-table-mode'       " edit tables
Plug 'nathangrigg/vim-beancount'        " beancount
Plug 'vimwiki/vimwiki'                  " vimwiki

" ================= Exec ================== "
Plug 'skywind3000/asyncrun.vim'         " async run scripts
Plug 'skywind3000/asynctasks.vim'       " async run tasks
Plug 'KabbAmine/zeavim.vim'             " doc for all
Plug 'iamcco/markdown-preview.nvim',    { 'do': 'cd app & yarn install' } " markdown preview
Plug 'kristijanhusak/vim-carbon-now-sh' " lit code screenshots
Plug 'tpope/vim-fugitive'               " git support
Plug 'ianding1/leetcode.vim'            " leetcode
Plug 'tpope/vim-eunuch'                 " sudo write
Plug 'itchyny/calendar.vim'             " calendar
Plug 'tpope/vim-obsession'              " auto save sessions
Plug 'voldikss/vim-translator'          " translator
Plug 'jpalardy/vim-slime'               " run in terminal
Plug 'skywind3000/vim-terminal-help'    " terminal enhance ( pip3 install neovim-remote )

call plug#end()



" ==================== general config ======================== "

" " light without bg transparency config
" let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_transparent_background=0
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_disable_italic_comment = 1
" set termguicolors                                       " Opaque Background
" set background=light
" colorscheme gruvbox-material

" gruvbox dark
set background=dark
" let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_transparent_background=1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 1
colorscheme gruvbox-material
highlight Normal guibg=NONE ctermbg=None
set termguicolors                                       " Opaque Background


set mouse=a                                             " enable mouse scrolling
" set clipboard+=unnamedplus                            " use system clipboard by default

" ===================== Other Configurations ===================== "

filetype plugin indent on                               " enable indentations
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent            " tab key actions
autocmd FileType haskell,tex setlocal shiftwidth=2 softtabstop=2 expandtab
set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
set fillchars+=vert:\▏                                  " requires a patched nerd font (try furaCode)
set wrap breakindent                                    " wrap long lines to the width sset by tw
set tw=0                                                " do not auto wrap lines that are longer than that
set linebreak
set nolist  " list disables linebreak
set encoding=utf-8                                      " text encoding
set number                                              " enable numbers on the left
set relativenumber                                      " current line is 0
set title                                               " tab title as file file
set conceallevel=2                                      " set this so we womt break indentation plugin
set splitright                                          " open vertical split to the right
" set splitbelow                                          " open horizontal split to the bottom
set emoji                                               " enable emojis
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
au BufEnter * set fo-=c fo-=r fo-=o                     " stop annying auto commenting on new lines
set undofile                                            " enable persistent undo
set undodir=~/.nvim/tmp                                 " undo temp file directory
set nofoldenable                                        " disable folding


" " Coloring
" highlight Pmenu guibg='00010a' guifg=white              " popup menu colors
" highlight Comment gui=bold                              " bold comments
highlight Normal gui=none
highlight NonText guibg=none
highlight clear SignColumn                              " use number color for sign colum color
autocmd ColorScheme * highlight VertSplit cterm=NONE    " split color
hi NonText guifg=bg                                     " mask ~ on empty lines
hi clear CursorLineNr                                   " use the theme color for relative number

" " colors for git (especially the gutter)
" hi DiffAdd guibg='#0f111a'
" hi DiffChange guibg='#0f111a'

" " coc multi cursor highlight color
" hi CocCursorRange guibg=#b16286 guifg=#ebdbb2

" " Ale
" highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500
" highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#FFA500

" performance tweaks
set nocursorline
set nocursorcolumn

set scrolljump=5
set lazyredraw
set synmaxcol=180
set re=1

" reg, breakline and bell
set magic
" linebreak on 500 characters
set lbr
" set tw=500 和autoformat冲突

" edit experiences tricks

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

"{{{pomodoro.vim
let g:Pomodoro_Status = 0
function! Toggle_Pomodoro()
  if g:Pomodoro_Status == 0
    let g:Pomodoro_Status = 1
    execute 'PomodoroStart'
  elseif g:Pomodoro_Status == 1
    let g:Pomodoro_Status = 0
    execute 'PomodoroStop'
  endif
endfunction
let g:pomodoro_time_work = 25
let g:pomodoro_time_slack = 5
nnoremap <silent> <leader>tp :<c-u>call Toggle_Pomodoro()<cr>
"}}}

function! PomodoroStatus() abort"{{{
  if pomo#remaining_time() ==# '0'
    return ""
    " return "0m"
  else
    return pomo#remaining_time()."m"
  endif
endfunction"}}}

" Add diagnostic info for https://github.com/itchyny/lightline.vim
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'gitbranch'],
      \             [ 'cocstatus' ] ],
      \   'right': [ [ 'readonly', 'filename' ], [ 'percent'], [ 'pomodoro','linter_errors', 'linter_warnings' ]  ]
      \ },
      \ 'inactive': {
      \   'right': [ [ 'readonly', 'filetype' ], [ 'percent'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'readonly': 'LightlineReadonly',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'filename': 'LightlineFilename',
      \   'cocstatus' : 'LightLineCoc',
      \   'pomodoro': 'PomodoroStatus',
      \ },
      \ 'component_expand':{
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \},
      \'component_type' : {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ },
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \ }
        " \'separator':{'left':"\ue0b8",'right':"\ue0ba"},
        " \'subseparator':{'left':"\ue0b9",'right':"\ue0bb"},
        " \'tabline_separator':{'left':"\ue0bc",'right':"\ue0be"},

function! LightlineReadonly()
  return &readonly && &filetype !~# '\v(help|vimfiler|unite|vista)' ? 'RO' : ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let filename = substitute(filename, '__vista__','vista','')
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function! LightLineCoc()
    if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {}))
        return ''
    endif
    return trim(coc#status())
endfunction


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
set cmdheight=1

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=200

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:UltiSnipsExpandTrigger="<s-tab>"

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

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"Coc-snippet
" Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)

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
            \'coc-xml',
            \'coc-syntax',
            \'coc-r-lsp',
            \'coc-snippets',
            \'coc-clangd',
            \'coc-texlab',
            \'coc-ci',
            \'coc-marketplace',
            \'coc-floaterm',
            \'coc-markmap',
            \'coc-ultisnips',
            \]

            " \'coc-rust-analyzer',
            " \'coc-sql',
            " \'coc-neosnippet',
            " \'coc-ccls',
            " \'coc-python',


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
" autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
" autocmd FileType markdown set spell
let g:mkdp_refresh_slow=1

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
" nmap <silent> <C-a> <Plug>(coc-cursors-word)
" xmap <silent> <C-a> <Plug>(coc-cursors-range)
command! -range=% Markmap CocCommand markmap.create -w <line1> <line2>

" ======================== Meta Config ====================== "
let mapleader=";"
" nnoremap ; :
nmap <leader>R :so ~/.config/nvim/init.vim<CR>
noremap <leader>I :PlugInstall<CR>
" nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

" ======================== Move ====================== "
" " for project wide search
" map <leader>/ :Ag<CR>
" nnoremap <silent> <leader>f :call Fzf_dev()<CR>
nnoremap <silent> <Leader>f :Files ~/Document/Seafile<CR>
nnoremap <silent> <Leader>fp :Files ~/Document/Seafile/private<CR>
nnoremap <silent> <Leader>b :BLine<CR>
nnoremap <silent> <Leader>a :Ag<CR>
nnoremap <silent> <Leader>B :Buffers<CR>
nnoremap <silent> <Leader>l :Line<CR>
nnoremap <silent> <Leader>T :BTags<CR>
nnoremap <silent> <Leader>hh :History<CR>

" inoremap jk <ESC>
" escape instern mode quickly
let g:better_escape_interval = 150
let g:better_escape_shortcut = 'jk'

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> sp <Plug>(coc-diagnostic-prev)
nmap <silent> sn <Plug>(coc-diagnostic-next)

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

" netrw open Explore in split
noremap <leader>e :Exp <CR>
noremap <leader>E :Vex <CR>

" tags
nmap <leader>V :Vista!! <CR>
" nmap <leader>v :Vista show<CR>  :Vista focus<CR>
" nmap <leader>v :Vista <CR>
nmap <leader>v :call vista#finder#fzf#Run('coc')<CR>
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_position = 'vertical topleft'
" let g:vista_executive_for = {'vimwiki': 'markdown', }
let g:vista_executive_for = {'vimwiki': 'toc', }
let g:vista#renderer#enable_icon=v:false
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" coc-ci 中文分词移动
nmap <silent> w <Plug>(coc-ci-w)
nmap <silent> b <Plug>(coc-ci-b)

" ======================== Display ====================== "
nmap <leader>g :Goyo<CR>
" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" errormsg timeout
autocmd CursorMoved * echo
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

"simpylfold
let g:SimpylFold_docstring_preview = 1
set foldmethod=syntax
autocmd FileType python set nofoldenable    " disable folding for python
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
nmap <leader>h zt:pedit <CR>
map <leader>H :pc <CR>

let g:semshi#simplify_markup = v:true
let g:semshi#always_update_all_highlights = v:true
let g:hardtime_default_on = 1

" scrollbar
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost             * silent! lua require('scrollbar').clear()
augroup end

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
" use Semshi to rename python instead of coc
autocmd FileType python nmap <silent> <leader>rn :Semshi rename<CR>

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

" try to define swap rule for haskell ->
" let g:swap#rules = deepcopy(g:swap#default_rules)
" let g:swap#rules += [{
"   \   "delimiter": ['->'],
"   \   "body": '\w*->\w',
"   \ }]

"switch between true and false combined with speeddating
nmap <Plug>SwapItFallbackIncrement <Plug>SpeedDatingUp
nmap <Plug>SwapItFallbackDecrement <Plug>SpeedDatingDown
vmap <Plug>SwapItFallbackIncrement <Plug>SpeedDatingUp
vmap <Plug>SwapItFallbackDecrement <Plug>SpeedDatingDown


"nvim-R
let g:R_assign = 0
let R_complete = 1
let R_show_args = 1
let R_openhtml=1
let R_latexcmd = 'xelatex'


" Bullets.vim for item list
let g:bullets_enabled_file_types = [
    \ 'vimwiki',
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
let g:bullets_pad_right = 0

let g:bullets_outline_levels = ['num','std*',
 \ 'std+', 'std-']

let g:bullets_checkbox_markers = ' .oOX'


" csv
" aug CSV_Editing
"     au!
"     au BufRead,BufWritePost *.csv :%!ArrangeColumn
"     au BufWritePre *.csv :%UnArrangeColumn
" aug end
let g:csv_autocmd_arrange = 0
let g:csv_autocmd_arrange_size = 1024*1024
let g:csv_start = 1
let g:csv_end = 200


"AutoPairs
let g:AutoPairsFlyMode = 1
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
au Filetype rust let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}


"input method
" The input method for Normal mode (as defined by `xkbswitch -g` or `ibus engine`)
let g:barbaric_default = 0
" The scope where alternate input methods persist (buffer, window, tab, global)
let g:barbaric_scope = 'buffer'
" Forget alternate input method after n seconds in Normal mode (disabled by default)
" Useful if you only need IM persistence for short bursts of active work.
let g:barbaric_timeout = -1


"autoformat
noremap <F3> :Autoformat<CR>
let g:formatterpath = ['python', 'black']
let g:formatterpath = ['sql', 'pg_format']
let g:formatters_haskell = ['my_haskell']
let g:formatdef_my_haskell = '"ormolu"'
let g:formatters_sql = ['my_sql_format']
let g:formatdef_my_sql_format = '"pg_format --type-case 3 --wrap-limit 80 --function-case 1"'

" disable indent for AsyncTask configuration
au BufRead,BufNewFile *.tasks    setfiletype tasks
autocmd FileType vim,tex,rmarkdown,rmd,markdown,todo,yaml,yml,cfg,tasks,dosini,conf,vimwiki,snippet let b:autoformat_autoindent=0
autocmd FileType vim,tex,rmarkdown,rmd,markdown,todo,yaml,yml,cfg,tasks,dosini,conf,vimwiki,snippet let b:shiftwidth=4
autocmd FileType snippet let b:autoformat_remove_trailing_spaces = 0
let b:autoformat_autoindent=0
au BufWrite * :Autoformat


"vim-table-mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'


" vimwiki
let g:vimwiki_global_ext = 0
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'custom_wiki2html': 'vimwiki_markdown', 'syntax': 'markdown', 'ext': '.md'},
"             \ {'path': '~/Document/Seafile/private/vimwiki2', 'custom_wiki2html': 'vimwiki_markdown', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_list = [{
  \ 'path':'~/Document/Seafile/private/vimwiki',
  \ 'auto_export': 1,
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '~/Document/Seafile/private/vimwiki_html',
  \ 'template_path': '~/Document/Seafile/private/vimwiki/template',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '~/vimwiki/wiki2html.sh',
  \ 'template_ext':'.html'
\},
  \{ 'auto_export': 0,
  \ 'automatic_nested_syntaxes':1,
  \ 'path':'~/Document/Seafile/private/vimwiki2',
  \ 'path_html': '~/Document/Seafile/private/vimwiki2_html',
  \ 'template_path': '~/Document/Seafile/private/vimwiki/template',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '~/vimwiki/wiki2html.sh',
  \ 'template_ext':'.html'
\}]


" ======================== Exec ====================== "
" carbon sh now
vnoremap <F8> :CarbonNowSh<CR>


" asynctasks
let g:asyncrun_open=6
" let g:asynctasks_term_pos = 'tab'
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_reuse = 1
let g:asynctasks_term_focus = 0
let g:asynctasks_term_rows = float2nr(winheight("%")/2.618)
nnoremap <silent> <Leader>m :AsyncTask file-build<cr>
nnoremap <silent> <Leader>r :AsyncTask file-run<cr>
nnoremap <silent> <Leader>c :AsyncTask file-check<cr>
nnoremap <silent> <Leader>t :AsyncTaskFzf <cr>


"zeal map
nnoremap gz :Zeavim "<cword>"&<CR><CR>
let g:zv_keep_focus = 1
" nnoremap gz :!zeal "<cword>"&<CR><CR>
" let g:python3_host_prog = '$HOME/.pyenv/versions/data376_YCM/bin/python'
" let g:ycm_auto_trigger=1
" let g:ycm_seed_identifiers_with_syntax = 1


"leetcode
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>
let g:leetcode_china = 1
let g:leetcode_solution_filetype = 'python'
let g:leetcode_browser = 'chrome'

" " leetcode-cn
" nnoremap <leader>ll :CocList LeetcodeProblems<cr>
" nnoremap <leader>lt :CocCommand leetcode.run<cr>
" nnoremap <leader>ls :CocCommand leetcode.submit<cr>
" nnoremap <leader>li :CocCommand leetcode.login<cr>


"calendar
let g:calendar_google_calendar = 0
let g:calendar_google_task = 0


"translator
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV
let g:translator_target_lang='zh'
let g:translator_default_engines=['haici', 'google', 'youdao']


" vim-slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

