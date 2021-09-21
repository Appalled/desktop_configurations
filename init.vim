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

" == meta config ==
let mapleader=";"
" nnoremap ; :
nmap <leader>R :so ~/.config/nvim/init.vim<CR>
noremap <leader>I :PlugInstall<CR>
" nmap <leader>t :call TrimWhitespace()<CR>
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

" == ui ==
Plug 'sainnhe/gruvbox-material'
Plug 'projekt0n/github-nvim-theme'
Plug 'itchyny/lightline.vim'      " lightline
Plug 'mopp/sky-color-clock.vim'   " colored clock
Plug 'psliwka/vim-smoothie'       " some very smooth ass scrolling
" Plug 'ryanoasis/vim-devicons'     " pretty icons everywhere
Plug 'luochen1990/rainbow'        " rainbow paranthesis
Plug 'lambdalisue/vim-fullscreen' " fullscreen for gui
Plug 'itchyny/vim-winfix'               " keep focus and window size
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" Plug 'wfxr/minimap.vim' 
Plug 'kevinhwang91/nvim-bqf'

" == edit ==
Plug 'Yggdroot/indentLine'        " show indentation lines
Plug 'wellle/visual-split.vim'
" Plug 'liuchengxu/vista.vim'       "display structure of context
Plug 'itchyny/vim-cursorword'     "add underline for cursorword
Plug 'neoclide/coc.nvim',               {'branch': 'release'}
" Plug 'honza/vim-snippets'               " snippets tool
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
Plug 'SirVer/ultisnips'                 " snippets source
" Plug 'chrisbra/csv.vim'                 " csv

" === language specific ===
Plug 'plasticboy/vim-markdown'    "markdown extension
Plug 'iamcco/markdown-preview.nvim',    { 'do': 'cd app & yarn install' } " markdown preview
Plug 'dkarter/bullets.vim'              " markdown
Plug 'arzg/vim-rust-syntax-ext'   "rust highlight extension
Plug 'nathangrigg/vim-beancount'        " beancount
Plug 'vimwiki/vimwiki'                  " vimwiki
Plug 'jalvesaq/nvim-r'                  " R
Plug 'iamcco/markdown-preview.nvim',    { 'do': 'cd app & yarn install' } " markdown preview
Plug 'sheerun/vim-polyglot'       " syntax hilight for multi languages
" Plug 'numirias/semshi',           {'do': ':UpdateRemotePlugins'}

" == move ==
Plug 'tpope/vim-vinegar'                " another split file explore
" Plug 'easymotion/vim-easymotion'        "
Plug 'phaazon/hop.nvim'                 " new easymotion
Plug 'farmergreg/vim-lastplace'         " open files at the last edited place
Plug 'Yggdroot/LeaderF'
Plug 'christoomey/vim-tmux-navigator'   "move between tmux and vim
Plug 'skywind3000/vim-gutentags'        "handle tags

" == edit ==
Plug 'kana/vim-repeat'                    " repead by dot
Plug 'jdhao/better-escape.vim'            "quick escape
Plug 'takac/vim-hardtime'                 " no jjjjkkkkk
Plug 'markonm/traces.vim'                 "highlight and live preview for substitute and smagic
Plug 'junegunn/vim-peekaboo'              " register preview
" Plug 'junegunn/vim-easy-align'            " align
Plug 'tomtom/tcomment_vim'                " comment
Plug 'tmhedberg/simpylfold'
Plug 'Jorengarenar/vim-syntaxMarkerFold' "enable custom fold while syntax folder is on
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " multiple cursor
Plug 'AndrewRadev/splitjoin.vim'        " split and join lines gS gJ
Plug 'jiangmiao/auto-pairs'             " auto pairs
" Plug 'tmsvg/pear-tree'                    " another pairs
Plug 'tpope/vim-speeddating'              " edit dating
Plug 'mjbrownie/swapit'                   " swith between true and false combined with speeddating
Plug 'tpope/vim-unimpaired'               " add empty line
" Plug 'tpope/vim-abolish'                " smarter substitution
Plug 'chiel92/vim-autoformat'           " autoformat

Plug 'brglng/vim-im-select'             " input method
Plug 'tmux-plugins/vim-tmux-focus-events' " auto select im in tmux

" === text-obj ===
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'machakann/vim-textobj-delimited'  " dad d3id
Plug 'machakann/vim-sandwich'           " make sandwiches sa{ sdb
Plug 'machakann/vim-swap'               " quick swap in tuples 2g> gs
Plug 'michaeljsmith/vim-indent-object'  " regard indent as text object
" Plug 'coderifous/textobj-word-column.vim'
" Plug 'glts/vim-textobj-comment'
" Plug 'tpope/vim-surround'               " handle surrunds
Plug 'terryma/vim-expand-region'

" == run ==
Plug 'skywind3000/asyncrun.vim'         " async run scripts
Plug 'skywind3000/asynctasks.vim'       " async run tasks
Plug 'tpope/vim-fugitive'               " git support
Plug 'tpope/vim-eunuch'                 " sudo write
Plug 'tpope/vim-obsession'              " auto save sessions
Plug 'voldikss/vim-translator'          " translator
Plug 'thanthese/tortoise-typing'        " typing practice
Plug 'rmolin88/pomodoro.vim'      " pomodoro timer
Plug 'skywind3000/vim-terminal-help'
Plug 'antoinemadec/FixCursorHold.nvim'  " acclerate cursor event

call plug#end()

" surround key map for sandwich
" runtime macros/sandwich/keymap/surround.vim



" basic configuration
set mouse=a                                             " enable mouse scrolling
filetype plugin indent on                               " enable indentations
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent            " tab key actions
autocmd FileType haskell,tex,sql setlocal shiftwidth=2 softtabstop=2 expandtab
" set incsearch ignorecase smartcase hlsearch             " highlight text while searching
set list listchars=trail:»,tab:»-                       " use tab to navigate in list mode
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

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


set noerrorbells
set novisualbell
set t_vb=
set tm=500

" == ui ==

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


" " Coloring
" highlight Pmenu guibg='00010a' guifg=white              " popup menu colors
" highlight Comment gui=bold                              " bold comments
highlight Normal gui=none
highlight NonText guibg=none
highlight clear SignColumn                              " use number color for sign colum color
autocmd ColorScheme * highlight VertSplit cterm=NONE    " split color
hi NonText guifg=bg                                     " mask ~ on empty lines
hi clear CursorLineNr                                   " use the theme color for relative number
hi clear LineNr                                         " use the theme color for line number

" tree sitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

lua << EOF
require'hop'.setup { create_hl_autocmd = true
}
EOF
" highlight

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" tree sitter incremental_selection
lua <<EOF
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF

lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.sql = {
  install_info = {
    url = "~/Coding/tools/tree_sitter_parser/tree-sitter-sql-main", -- local path or git repo
    files = {"src/parser.c"}
  },
  filetype = "sql", -- if filetype does not agrees with parser name
  used_by = {} -- additional filetypes that use this parser
}
require "nvim-treesitter.configs".setup {
  playground = {
    enable = false,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}
require "nvim-treesitter.configs".setup {
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"},
  },
}

EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" "mini map
" let g:minimap_width = 10

" == edit ==
" ==== coc
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

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> sp <Plug>(coc-diagnostic-prev)
nmap <silent> sn <Plug>(coc-diagnostic-next)

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
            \'coc-clangd',
            \'coc-texlab',
            \'coc-ci',
            \'coc-marketplace',
            \'coc-floaterm',
            \'coc-markmap',
            \]

            " \'coc-ultisnips',
            " \'coc-snippets',
            " \'coc-rust-analyzer',
            " \'coc-sql',
            " \'coc-neosnippet',
            " \'coc-ccls',
            " \'coc-python',

" coc markmap
nmap <silent> <C-c> <Plug>(coc-cursors-position)
command! -range=% Markmap CocCommand markmap.create -w <line1> <line2>


" ==== lightline
" Add diagnostic info for https://github.com/itchyny/lightline.vim
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

" let g:sky_color_clock#timestamp_force_override = 1516201200 + 12 * 60 * 60 " 12:00:00
let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'gitbranch'],['readonly', 'filename' ],
      \             [ 'cocstatus' ]],
      \   'right': [['sky_color_clock'], [ 'percent'], [ 'pomodoro','linter_errors', 'linter_warnings' ]]
      \ },
      \ 'inactive': {
        \ 'left': [[ 'readonly', 'filename' ]],
      \   'right': [  [ 'percent'] ]
      \ },
        \ 'component': {
        \   'sky_color_clock': "%#SkyColorClock#%{' ' . sky_color_clock#statusline() . ' '}%#SkyColorClockTemp# ",
        \ },
        \ 'component_raw': {
        \   'sky_color_clock': 1,
        \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'readonly': 'LightlineReadonly',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'filename': 'LightlineFilename',
      \   'cocstatus' : 'LightLineCoc',
      \   'pomodoro': 'PomodoroStatus',
      \   'sky_clock': "sky_color_clock#statusline",
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
      \     'percent':'right',
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
  let filename = substitute(filename, '-MINIMAP-','','')
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function! LightLineCoc()
    if empty(get(g:, 'coc_status', '')) && empty(get(b:, 'coc_diagnostic_info', {}))
        return ''
    endif
    return trim(coc#status())
endfunction

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" " Pair expansion is dot-repeatable by default:
" let g:pear_tree_repeatable_expand = 0
"
" " Smart pairs are disabled by default:
" let g:pear_tree_smart_openers = 1
" let g:pear_tree_smart_closers = 1
" let g:pear_tree_smart_backspace = 1

" ==== input method
" The input method for Normal mode (as defined by `xkbswitch -g` or `ibus engine`)
let g:barbaric_default = 0
" The scope where alternate input methods persist (buffer, window, tab, global)
let g:barbaric_scope = 'buffer'
" Forget alternate input method after n seconds in Normal mode (disabled by default)
" Useful if you only need IM persistence for short bursts of active work.
let g:barbaric_timeout = -1

" === language specific ===
" ==== nvim-R
let g:R_assign = 0
let R_complete = 1
let R_show_args = 1
let R_openhtml=1
let R_latexcmd = 'xelatex'

" ==== markdown
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

" == move ==
" " ==== easymotion
" let g:EasyMotion_startofline = 0                        " keep cursor column when JK motion
" let g:EasyMotion_smartcase = 1                          " ignore case
" map f <Plug>(easymotion-prefix)
" map ff <Plug>(easymotion-s)
" map fs <Plug>(easymotion-f)
" map fl <Plug>(easymotion-lineforward)
" map fj <Plug>(easymotion-j)
" map fk <Plug>(easymotion-k)
" map fh <Plug>(easymotion-linebackward)

" HOP
map ft :HopChar1BC<CR>
map ff :HopChar1AC<CR>
map fs :HopChar1AC<CR>
map fj :HopLineAC<CR>
map fk :HopLineBC<CR>
map fb :HopWordBC<CR>
map fw :HopWordAC<CR>
" map ft :HopChar1BC<CR>

" Leaderf
" don't show the help in normal mode
nnoremap <silent> <Leader>t :Leaderf bufTag <CR>
nnoremap <silent> <Leader>f :Leaderf file ~/Document/Seafile<CR>
nnoremap <silent> <Leader>fp :Leaderf file ~/Document/Seafile/private<CR>
nnoremap <silent> <Leader>l :Leaderf line<CR>
nnoremap <silent> <Leader>B :Leaderf buffer<CR>
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 1, 'file': 1, 'line': 1, 'buffer': 1}
let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.pdf','*.csv','*.log','*.7z','*.zip','*.bin']
        \}
" leaderf with gutentags
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_GtagsGutentags = 1
let g:Lf_GtagsAutoUpdate = 1

" generate tags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.LfCache/gtags 目录中，避免污染工程目录
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags
let g:Lf_CacheDirectory= expand('~')
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/.LfCache/gtags')
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" ==== netrw
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

" ==== simpylfold
let g:SimpylFold_docstring_preview = 1
set foldmethod=indent
" set foldmethod=syntax
autocmd FileType python set nofoldenable    " disable folding for python
nnoremap <space> za
vnoremap <space> zf

" 自定义展示折叠内容
set foldtext=MyFoldText()
" 用空格作为折叠后面的占位符
set fillchars=fold:\ 

function! MyFoldText()
    let line = getline(v:foldstart)
    let folded_line_num = v:foldend - v:foldstart
    let line_text = substitute(line, '^"{\+', '', 'g')
    let fillcharcount = &textwidth - len(line_text) - len(folded_line_num)
    return '+'. repeat('-', 2) . line_text . repeat('.', fillcharcount) . ' <' . folded_line_num . 'L>'
endfunction

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
" ==== tmux
" tmux cursor shape
if exists('$TMUX')
    let &t_SI .= "\ePtmux;\e\e[=1c\e\\"
    let &t_EI .= "\ePtmux;\e\e[=2c\e\\"
else
    let &t_SI .= "\e[=1c"
    let &t_EI .= "\e[=2c"
endif

" ==== highlight
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
" 手动关闭搜索高亮
nnoremap <A-u> :set nohlsearch<cr>

" == edit ==
" ==== Copy to clipboard
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
" autocmd FileType python nmap <silent> <leader>rn :Semshi rename<CR>

" ==== auto save
" auto save file changes
let g:auto_save = 1                                     " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1                       " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0                      " do not save while in insert mode
let g:auto_save_silent = 1

" === text-obj ===

map <buffer> aC <Plug>(PythonsenseOuterClassTextObject)
map <buffer> iC <Plug>(PythonsenseInnerClassTextObject)
"test-obj vim-swap
omap i, <Plug>(swap-textobject-i)
xmap i, <Plug>(swap-textobject-i)
omap a, <Plug>(swap-textobject-a)
xmap a, <Plug>(swap-textobject-a)


"terryma/vim-expand-region  +/- to change visual select region
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1, 
      \ 'ib'  :1, 
      \ 'iB'  :1, 
      \ 'il'  :0, 
      \ 'ip'  :0,
      \ 'ie'  :0, 
      \ }


"switch between true and false combined with speeddating
nmap <Plug>SwapItFallbackIncrement <Plug>SpeedDatingUp
nmap <Plug>SwapItFallbackDecrement <Plug>SpeedDatingDown
vmap <Plug>SwapItFallbackIncrement <Plug>SpeedDatingUp
vmap <Plug>SwapItFallbackDecrement <Plug>SpeedDatingDown
" == run ==
" ==== pomodoro
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

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction


" ==== tabs manipulation
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


"autoformat
noremap <F3> :Autoformat<CR>
let g:formatterpath = ['python', 'black']
let g:formatterpath = ['sql', 'pg_format']
let g:formatters_haskell = ['my_haskell']
let g:formatdef_my_haskell = '"ormolu"'
" let g:formatters_sql = ['my_sql_format']
let g:formatdef_my_sql_format = '"pg_format --type-case 3 --wrap-limit 80 --function-case 1"'


" disable indent for AsyncTask configuration
au BufRead,BufNewFile *.tasks setfiletype tasks
autocmd FileType vim,tex,rmarkdown,rmd,markdown,todo,yaml,yml,cfg,tasks,dosini,conf,vimwiki,snippet,sql let b:autoformat_autoindent=0
autocmd FileType vim,tex,rmarkdown,rmd,markdown,todo,yaml,yml,cfg,tasks,dosini,conf,vimwiki,snippet let b:shiftwidth=4
autocmd FileType snippet let b:autoformat_remove_trailing_spaces = 0
let b:autoformat_autoindent=0
" au BufWrite * :Autoformat

" ==== vimwiki
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
" nnoremap <silent> <Leader>t :AsyncTaskFzf <cr>


" ==== translator
nmap <silent> <Leader>T <Plug>TranslateW 
vmap <silent> <Leader>T <Plug>TranslateWV
let g:translator_target_lang='zh'
let g:translator_default_engines=['haici', 'google', 'youdao']

nmap <Leader>u :nohlsearch<CR>

" ==== ultisnip
let g:UltiSnipsExpandTrigger="<c-y>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" FixCursorHold.nvim  " acclerate cursor event
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100
