"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""s
""   个人vim配置
se encoding=utf-8
se nu    
set fo-=r   " 取消自动注释
se ruler   " 一直显示目前的位置
se history=500 " 设置历史条数
se background=dark
syntax enable

" 目前好像没生效
set autoread   " 设置如果打开了文件  别人修改了就立刻更新
au FocusGained,BufEnter * checktime

let mapleader=","   "这个配置拎一个输入命令的接收键
nmap <leader>w :w!<cr>   "这个是输入,后的映射  cr是换行

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" 下面四个我也不知道我在干嘛
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
map <space> /
map <C-space> ?

"Always show the status line
set laststatus=2
" format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set whichwrap+=<,>,h,l   " 设置到行首行尾自动换行
:map ^[Down  <m+>
:map ^[Up <m-2>

:map <F1> <ESC>:tabnew<CR>
:map <C-w> <ESC>:q<CR><ESC><ESC>
" ctrl+w直接关闭窗口
:imap <C-w> <ESC>:q<CR>   


"  F1创建窗口   要映射Alt的话，前面加个set就可以   alt加h l这些切换
:cmap tn tabnew   "  tn直接创建窗口
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
" execute "set <M-Up>=\eUp" "这个无法生效
" execute "set <M-Down>=\eDown"
:map <M-k> <ESC>:m-2<CR>
:map <M-j> <ESC>:m+1<CR>
:map <M-h> gT
:map <M-l> gt
" :map <M-Up> <ESC>:m-2<CR>
" :map <M-Down> <ESC>:m+1<CR>






''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''from PA''''''''''''''''''''''''''''''''''''''''''''''
set whichwrap+=<,>,h,l   " 设置到行首行尾自动换行
:map ^[Down  <m+>
:map ^[Up <m-2>
setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
" colorscheme evening " 设定配色方案
set number " 显示行号
" set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
" set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-h>=\eh"
execute "set <M-l>=\el"
:map <M-k> <ESC>:m-2<CR>
:map <M-j> <ESC>:m+1<CR>

