" 设置leader
let mapleader=","
" 语法高亮  
syn on
" 配色方案  
colorscheme desert

" 括号内是vim插件安装路径，可以自定义
call plug#begin()


"""""""""""""""""""""""""""""Markdown"""""""""""""""""""""""""""
" vim-markdown  markdown高亮插件
Plug 'godlygeek/tabular'  " 必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'

" vim-markdown-toc 自动在当前光标生成目录
Plug 'mzlogin/vim-markdown-toc'

" markdown-preview.nvim  浏览器实时预览markdown文件
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 补全插件coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 状态栏airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" 解决vim大O卡顿
" set timeout timeoutlen=3000 ttimeoutlen=100

" markdown-preview插件:关闭打开markdown文件默认折叠
let g:vim_markdown_folding_disabled=1


""""""""""""""""""""""""""""""coc.vim配置""""""""""""""""""""""

" 需要设置pyxversion变量，选择默认Python版本
set pyxversion=3

" always show signcolumns
" set signcolumn=yes

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

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

""""""""""""""""""""""""""""coco.vim配置结束"""""""""""""""""""""""


" colorscheme torte  
set pastetoggle=<F11>         " pastetoggle( 粘贴模式切换 ) 可以避免自动缩进   
                              " 的带来的格式影响；每次按下 <F11> 键可以打开   
                              " / 关闭自动缩进功  
" 去掉输入错误的提示声音  
set noeb  
" 在处理未保存或只读文件的时候，弹出确认  
set confirm  
" 自动缩进  
set autoindent  
set cindent  
" 自动换行  
set wrap  
" 整词换行  
set linebreak  
" Tab键的宽度  
set tabstop=2
" 统一缩进为4  
set softtabstop=2
set shiftwidth=2
" 不要用空格代替制表符  
" set noexpandtab  
set expandtab  
" 在行和段开始处使用制表符  
"set smarttab  
" 显示行号  
set number  
" 历史记录数  
set history=1000  
"禁止生成临时文件  
set nobackup  
set noswapfile  
"搜索忽略大小写  
"set ignorecase  
"搜索逐字符高亮  
set hlsearch  
set incsearch  
"行内替换  
set gdefault  
"编码设置  
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  
"语言设置  
set helplang=cn  
"防止特殊字符无法显示
set ambiwidth=double
"vim 内部编码
set encoding=utf8   
"vim 当前编辑的文件编码
set fileencoding=utf-8
set langmenu=zh_CN.UTF-8   
set imcmdline   
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim  
" 设置字体。  
set guifont=Monaco\ 14
"set  guifont=Fixedsys\Excelsior\3.01\ 14  
" 我的状态行显示的内容（包括文件类型和解码）  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]  
" 总是显示状态行  
set laststatus=2  
" 在编辑过程中，在右下角显示光标位置的状态行  
set ruler             
" 命令行（在状态行下）的高度，默认为1，这里是2  
set cmdheight=1  
" 侦测文件类型  
filetype on  
" 载入文件类型插件  
filetype plugin on  
" 为特定文件类型载入相关缩进文件  
filetype indent on  
" 保存全局变量  
set viminfo+=!  
" 带有如下符号的单词不要被换行分割  
set iskeyword+=_,$,@,%,#,-  
" 字符间插入的像素行数目  
set linespace=0  
" 增强模式中的命令行自动完成操作  
set wildmenu  
" 使回格键（backspace）正常处理indent, eol, start等  
set backspace=2  
" 允许backspace和光标键跨越行边界  
"set whichwrap+=<,>,h,l  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过  
set report=0  
" 启动的时候不显示那个援助索马里儿童的提示  
set shortmess=atI  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
" 高亮显示匹配的括号  
set showmatch  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=5  
" 光标移动到buffer的顶部和底部时保持3行距离  
set scrolloff=3  
" 为C程序提供自动缩进  
set smartindent  
" 用空格键来开关折叠  
set foldenable  
set foldmethod=manual  

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" 小写转换为大写
inoremap <c-u> <ESC>viwgUea
nnoremap <c-u> viwgUe
" insert模式，为下一行添加空行并跳转到该空行，不管游标是否处于上一行的行末
inoremap <c-j> <ESC>o
" 末尾添加;
inoremap <c-l> <ESC>A;
nnoremap <c-l> A;<ESC>

" c-f ->  c-b <-
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-n> <down>
inoremap <c-p> <up>
inoremap <c-e> <ESC>A
inoremap <c-a> <ESC>I
nnoremap <Space> zz

" #main
iabbrev #main int main( void )<c-]>return 0;
" #fullmain
iabbrev #main_arg int main( int argc, char *argv[] )<c-]>return 0;
" 自动添加include
inoremap <leader>i< #include <><left>
inoremap <leader>i" #include ""<left>
" 添加下一行的大括号对
inoremap <leader>{ {}<left><cr><cr><up><tab>
" 添加一对小括号
inoremap <leader>( ()<left><space><space><left>
" 添加一对单引号
inoremap <leader>' ''<left>
" 添加一对双引号
inoremap <leader>" ""<left>
