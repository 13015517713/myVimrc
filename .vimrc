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




