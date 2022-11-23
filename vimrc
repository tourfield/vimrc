"<====================================================================>
""vim 配置
"<====================================================================>
"<====================================================================>
"%!xxd
set nowrap
set display=uhex
" =================================Plugin Start==================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'ianva/vim-youdao-translater'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
Plugin 'quark-zju/vim-cpp-auto-include'
Plugin 'comments.vim' "快速注释
Plugin 'winmanager' "窗口管理
Plugin 'Lokaltog/vim-powerline' "漂亮的状态栏
Plugin 'kien/ctrlp.vim' "强大的文件搜索
Plugin 'godlygeek/tabular' "快速对齐
Plugin 'terryma/vim-multiple-cursors' "多光标同时编辑
Plugin 'tpope/vim-haml' "sass scss haml等css开发语言支持
Plugin 'genoma/vim-less' "less支持
Plugin 'Raimondi/delimitMate' "自动补全引号 括号等
Plugin 'hail2u/vim-css3-syntax' "css3语法高亮
Plugin 'othree/html5.vim' "html5标签支持
Plugin 'docunext/closetag.vim' "html xml自动闭合标签
Plugin 'gregsexton/MatchTag' "自动高亮匹配标签
Plugin 'terryma/vim-expand-region' "自动选择括号等符号中的内容
Plugin 'tpope/vim-surround' "符号自动环绕
Plugin 'tpope/vim-repeat' "更为强大的重做功能
Plugin 'bronson/vim-trailing-whitespace' "显示以及去除行尾空格
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' "内置了一堆语言的自动补全片段
Plugin 'rstacruz/vim-ultisnips-css' "css的补全
Plugin 'tacahiroy/ctrlp-funky' "基于ctrlp的搜索函数等变量名
Plugin 'dyng/ctrlsf.vim' "基于ctrlp的文件内容搜索，配合vim－multiple－cursors可以很方便一次修改多个文件的内容
Plugin 'pangloss/vim-javascript' "更好的js语法 锁进支持
Plugin 'othree/yajs.vim' "更好的js语法高亮
Plugin 'othree/javascript-libraries-syntax.vim' "js各类框架 库的高亮支持
Plugin 'maksimr/vim-jsbeautify' "格式化js css等
Plugin 'marijnh/tern_for_vim' "牛逼的基于语法分析的补全
Plugin 'mbriggs/mark.vim' "标记高亮
Plugin 'gorodinskiy/vim-coloresque' "颜色符号显示对应颜色
Plugin 'Xuyuanp/nerdtree-git-plugin' "git支持
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/vim-misc'
Plugin 'tpope/vim-dispatch'
" Plugin 'vim-scripts/vim-easytags'
Plugin 'hsanson/vim-android'
Plugin 'kivy/kivy'
Plugin 'javacomplete'
Plugin 'rking/ag.vim'
Plugin 'rdnetto/ycm-generator'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/tComment'
Plugin 'danro/rename.vim'
Plugin 'pbrisbin/vim-mkdir'
" Plugin 'jeaye/color_coded'
" -----------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" =================================Plugin End ==================================

" =================================Typeset Start==================================
" Backspace deletes like most programs in insert mode
set backspace=2
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5
set cin
" Softtabs, 2 spaces
set shiftround

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Make it obvious where 80 characters is
set textwidth=120
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

set matchpairs+=<:>
set hlsearch
set autoread
set mouse=a
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
"<====================================================================>
"<====================================================================>
" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启文件类型侦测
filetype on

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" vim 自身命令行模式智能补全
set wildmenu

" 定义快捷键的前缀，即<Leader>
" let mapleader=";"
" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
"fun! ToggleFullscreen()
"    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
"endf
" 全屏开/关快捷键
"map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()
" 设置 gvim 显示字体
set guifont=YaHei\Consolas\Hybrid\12

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" set paste
" =================================Typeset End ==================================

" =================================NERD tree Start==================================
" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.gitignore$','\.git$','\.repo$','\.o$','\.d$','\.a$','\.so$','^tags$','\.orig$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
let g:snipMate = { 'snippet_version' : 1 }
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F4> :NERDTreeToggle<cr>
" =================================NERD tree End ==================================

" =================================Tagbar Start=================================
" Tagbar
" let g:tagbar_width=35
" let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>
" =================================Tagbar End ==================================

" =================================ctrap Start=================================
" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" -----------------ag search tools start-----------------
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" -----------------ag search tools end------------------
" =================================ctrap Start=================================

" =================================Gitstatus Start==================================
set laststatus=2 " Always display the status line
set statusline+=%{fugitive#statusline()} "  Git Hotness
" =================================Gitstatus End ==================================

" =================================syntastic Start==================================
" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:statline_syntastic = 0

"statusline setup
set statusline=%f "tail of the filename
"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*
"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h "help file flag
set statusline+=%y "filetype
set statusline+=%r "read only flag
set statusline+=%m "modified flag
set statusline+=%#warningmsg#
" set statusline+=%{StatlineSyntastic()}
set statusline+=%*
" =================================syntastic End ==================================

" =================================Markdown Start==================================
" Markdown 配置
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_emphasis_multiline = 0
set conceallevel=2
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['csharp=cs']
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
map asdf <Plug>Markdown_MoveToParentHeader
map <Plug> <Plug>Markdown_MoveToParentHeader
" =================================Markdown End ==================================

" =================================omnisharp Start==================================
" omnisharp
let g:OmniSharp_typeLookupInPreview = 1
" =================================omnisharp End ==================================

" =================================YouCompleteMe Start==================================
" let g:EclimCompletionMethod = 'omnifunc'
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" =================================YouCompleteMe End ==================================

" =================================FormartSrc Start==================================
map <F12> :call FormartSrc()<CR>
"定义FormartSrc()
func FormartSrc()
exec "w"
if &filetype == 'c'
exec "!astyle % --style=ansi --suffix=none %"
exec "e! %"
elseif &filetype == 'cpp'
exec "!astyle % --style=ansi --suffix=none %"
exec "e! %"
elseif &filetype == 'cc'
exec "!astyle % --style=ansi --suffix=none %"
exec "e! %"
elseif &filetype == 'cxx'
exec "!astyle % --style=ansi --suffix=none %"
exec "e! %"
elseif &filetype == 'cu'
exec "!astyle % --style=ansi --suffix=none %"
exec "e! %"
elseif &filetype == 'perl'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'py'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'java'
exec "!astyle --style=java --suffix=none %"
exec "e! %"
elseif &filetype == 'jsp'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'xml'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'html'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'htm'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'php'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
elseif &filetype == 'js'
exec "!astyle --style=gnu --suffix=none %"
exec "e! %"
endif
endfunc
"结束定义FormartSrc
"脚本添加执行权限
function ModeChange()
  if getline(1) =~ "^#!"
    if getline(1) =~ "/bin/"
        silent !chmod a+x <afile>
    endif
  endif
endfunction
au BufWritePost * call ModeChange()
"打开上次编辑的位置
autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
"自动添加括号
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf
" =================================FormartSrc End ==================================

" =================================OmniSharp Start=================================

" =================================OmniSharp End ==================================

" =================================ctrlsf start=================================
let g:ctrlsf_ackprg='ag'
"" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。
nnoremap <Leader>sp :CtrlSF<CR>

let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'
" =================================ctrlsf End ==================================

"<====================================================================>
"<====================================================================>
" 不随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent><Leader>i <Plug>IndentGuidesToggle


" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

let g:cpp_class_scope_highlight=1
let g:cpp_experimental_template_highlight=1
" *.cpp 和 *.h 间切换
nmap <silent><Leader>sw :FSHere<cr>


let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0',
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

":set tags+=./tags

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
"" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。
nnoremap <Leader>sp :CtrlSF<CR>

let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_skip_key='<S-k>'
"<====================================================================>
"<====================================================================>
vnoremap <silent> <C-T> <Esc>:Ydv<CR>
nnoremap <silent> <C-T> <Esc>:Ydc<CR>
noremap <leader>yd :Yde<CR>

"<====================================================================>
"<====================================================================>
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
"<====================================================================>
"<====================================================================>
"语法自动补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
"<====================================================================>
"<====================================================================>
" YCM 补全菜单配色
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
"set tags+=/home/geary/.vim/tags/opencv
"set tags+=/home/geary/.vim/tags/cpp_std
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
set completeopt=longest,menu
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
let g:ycm_use_ultisnips_completer=1
"由接口快速生成实现框架快捷键 <leader>PP，自动生成了函数框架。
" 设置 pullproto.pl 脚本路径
let g:protodefprotogetter='~/.vim/bundle/protodef/pullproto.pl'
" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=1

" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" Python, JavaScript, Go
"let g:kite_supported_languages = ['python', 'javascript', 'go']
" All the languages Kite supports
let g:kite_supported_languages = ['*']
" Turn off Kite
" let g:kite_supported_languages = []
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set completeopt+=preview
"let g:kite_previous_placeholder = '<C-H>'
"let g:kite_next_placeholder = '<C-L>`
autocmd CompleteDone * if !pumvisible() | pclose | endif


"<====================================================================>
"<====================================================================>
" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>
" 开启保存 undo 历史功能
set undofile
" undo 历史保存路径
set undodir=~/.undo_history/
"<====================================================================>
"<====================================================================>
"下面的代码放到自己的vimrc配置中即可"
"<====================================================================>
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
"<====================================================================>
"<====================================================================>

" 当新建 .h .c .hpp .cpp .mk .sh等文件时自动调用SetTitle 函数
autocmd BufNewFile *.[ch],*.hpp,*.cpp,Makefile,*.mk,*.sh exec ":call SetTitle()"
autocmd bufnewfile *.py call SetComment_py()
" 加入注释
func SetComment()
	call setline(1,"/*================================================================")
	call append(line("."),   "*   Copyright (C) ".strftime("%Y")." All rights reserved.")
	call append(line(".")+1, "*")
	call append(line(".")+2, "*   filename    : ".expand("%:t"))
	call append(line(".")+3, "*   Author      : wjyang")
	call append(line(".")+4, "*   Date        : ".strftime("%Y-%m-%d"))
	call append(line(".")+5, "*   Description :")
	call append(line(".")+6, "*")
	call append(line(".")+7, "================================================================*/")
	call append(line(".")+8, "")
endfunc
" 加入shell,Makefile注释
func SetComment_sh()
	call setline(3, "#   Copyright (C) ".strftime("%Y")." All rights reserved.")
	call setline(4, "#")
	call setline(5, "#   filename    : ".expand("%:t"))
	call setline(6, "#   Author      : wjyang")
	call setline(7, "#   Date        : ".strftime("%Y-%m-%d"))
	call setline(8, "#   Description :")
	call setline(9, "#")
	call setline(10, "#================================================================")
endfunc
func SetComment_py()
	call setline(1, "# -*- coding: utf-8 -*-")
	call setline(2, "#   Copyright (C) ".strftime("%Y")." All rights reserved.")
	call setline(3, "#")
	call setline(4, "#   filename    : ".expand("%:t"))
	call setline(5, "#   Author      : wjyang")
	call setline(6, "#   Date        : ".strftime("%Y-%m-%d"))
	call setline(7, "#   Description :")
	call setline(8, "#")
	call setline(9, "#================================================================")
	call setline(10, "\"\"\" \"\"\"")

	normal G
	normal o
	normal o
endfunc

" 定义函数SetTitle，自动插入文件头
func SetTitle()
	if &filetype == 'make'
		call setline(1, "#================================================================")
		call setline(2, "#")
		call SetComment_sh()
		normal G
		normal o
		normal o
	elseif &filetype == 'sh'
		call setline(1,"#!/bin/bash")
		call setline(2, "#================================================================")
		call SetComment_sh()
		normal G
		normal o
		normal o
	else
		call SetComment()
		if expand("%:e") == 'hpp'
			call append(line(".")+9, "#ifndef _".toupper(expand("%:t:r"))."_H")
			call append(line(".")+10, "#define _".toupper(expand("%:t:r"))."_H")
			call append(line(".")+11, "#ifdef __cplusplus")
			call append(line(".")+12, "extern \"C\"")
			call append(line(".")+13, "{")
			call append(line(".")+14, "#endif")
			call append(line(".")+15, "")
			call append(line(".")+16, "#ifdef __cplusplus")
			call append(line(".")+17, "}")
			call append(line(".")+18, "#endif")
			call append(line(".")+19, "#endif //".toupper(expand("%:t:r"))."_H")
			normal 16G
			normal o
			normal o
		elseif expand("%:e") == 'h'
			call append(line(".")+9, "#pragma once")
			normal G
			normal o
			normal o
		elseif &filetype == 'c'
			call append(line(".")+9,"#include \"".expand("%:t:r").".h\"")
			normal G
			normal o
			normal o
		elseif &filetype == 'cpp'
			call append(line(".")+9, "#include \"".expand("%:t:r").".hpp\"")
			normal G
			normal o
			normal o
		endif
	endif
endfunc

